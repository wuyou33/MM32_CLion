#include "riccati_solver.h"
#include "test.h"

#ifndef RUNNING_UNIT_TEST
#include "qfplib.h"
#include "sensor_decode.h"
#include "delay.h"
#include "uart.h"
#endif

#define YAW_TO_ANGLE        (-63.66203f)     // 180/pi * (-50/45)
#define OUTPUT_DEBUG_INFO   (0)
#define ITERATION_ACCURACY  (0.1f)
#define ANGLE_TO_RADIAN     (0.0174533f)
#define _2PI_               (6.2831853f)

#ifndef RUNNING_UNIT_TEST

void project(basic_status_t current, basic_status_t *project, float v, float t, float servo_angle) {
    float l = 0.28f;
    float r = l / qfp_ftan(servo_angle);
    float theta = v * t / r;
    float s = 2 * r * qfp_fsin(0.5f * theta);
    float delta = v * t / l * 0.5f * qfp_ftan(servo_angle) + current.angle;
    project->pos_n = s * qfp_fcos(delta) + current.pos_n;
    project->pos_e = s * qfp_fsin(delta) + current.pos_e;
    project->angle = theta + current.angle;
}

// 对电机和舵机的控制量
extern volatile unsigned short speed;
extern volatile short angle;
extern unsigned int uart7_dma_send_buffer[UART7_DMA_SEND_BUFFER];

float calculate_distance(int ind) {
    float distance = (qfp_fsqrt
        ((test_point[ind][0] - proc_data.distance_north)
             * (test_point[ind][0] - proc_data.distance_north)
             + (test_point[ind][1] - proc_data.distance_east) *
                 (test_point[ind][1] - proc_data.distance_east)));
    return distance;
}

static float last_delta = 0;
static unsigned int last_global_time_stamp = 0;
void lqr_control(unsigned short index) {
    if (last_global_time_stamp == 0)
        last_global_time_stamp = global_time_stamp - 20;
    float v_r = 2.5f, dt = (float) (global_time_stamp - last_global_time_stamp) * 0.001f, L = 0.28f;
    last_global_time_stamp = global_time_stamp;

    // 求位置、航向角的误差
//    proc_data.north_angle = proc_data.north_angle - last_delta * 0.01f;
    float yaw_temp = (proc_data.north_angle < 180) ? proc_data.north_angle : (proc_data.north_angle - 360);
    yaw_temp *= ANGLE_TO_RADIAN;

    float x_error = proc_data.distance_north - test_point[index][0];
    float y_error = proc_data.distance_east - test_point[index][1];
    float yaw_error = yaw_temp - test_point[index][2];
    if (yaw_error > 3.14)
        yaw_error -= _2PI_;
    else if (yaw_error < -3.14)
        yaw_error += _2PI_;

//     计算横向误差
//    float lateral_error = y_error * qfp_fcos(test_point[index][2]) - x_error * qfp_fsin(test_point[index][2]);

    // 由状态方程矩阵系数，计算K
    float a[3][3] = {{1, 0, -v_r * dt * qfp_fsin(test_point[index][2])},
                     {0, 1, v_r * dt * qfp_fcos(test_point[index][2])},
                     {0, 0, 1}};
    float b[3][2] = {{qfp_fcos(test_point[index][2]) * dt, 0},
                     {qfp_fsin(test_point[index][2]) * dt, 0},
                     {qfp_ftan(test_point[index][3]) * dt / L, v_r * dt /
                         (L * qfp_fcos(test_point[index][3]) * qfp_fcos(test_point[index][3]))}};

    // 获得速度误差量、前轮转角误差量两个控制量
    float x[3][1] = {{x_error},
                     {y_error},
                     {yaw_error}};
    float p[3][3] = {0};
    float control_val[2][1] = {0};
    float q = 1;
    float r = 2;

    solve_riccati_equation(a, b, q, r, p);
    solve_feedback_value(p, a, b, x, r, control_val);
    //    speed = speed +control_val[0][0];
    last_delta = control_val[1][0] + test_point[index][3];//+ k_d * (yaw_error - last_yaw_error);
    angle = (short) (158 + last_delta * YAW_TO_ANGLE);
    if (angle > 195)
        angle = 195;
    else if (angle < 105)
        angle = 105;
}

/* 寻找点迹 */
int dichotomy(int ind_start, int ind_end) {
    int ind_middle, ind_middle_add, ind_middle_sub;
    for (unsigned char i = 0; i < 5; i++) {
        ind_middle = (ind_start + ind_end) / 2;
        ind_middle_add = (ind_middle + ind_end) / 2;
        ind_middle_sub = (ind_start + ind_middle) / 2;
        if (calculate_distance(ind_middle) > calculate_distance(ind_middle_add)) {
            ind_start = ind_middle;
        } else if (calculate_distance(ind_middle) > calculate_distance(ind_middle_sub)) {
            ind_end = ind_middle;
        } else
            break;
    }
    return ind_middle;
}
#else

/* 寻找点迹 */
int dichotomy(int ind_start, int ind_end, float x, float y) {
    int ind_middle, ind_middle_add, ind_middle_sub;
    for (unsigned char i = 0; i < 5; i++) {
        ind_middle = (ind_start + ind_end) / 2;
        ind_middle_add = (ind_middle + ind_end) / 2;
        ind_middle_sub = (ind_start + ind_middle) / 2;
        if (calculate_distance(ind_middle, x, y) > calculate_distance(ind_middle_add, x, y)) {
            ind_start = ind_middle;
        } else if (calculate_distance(ind_middle, x, y) > calculate_distance(ind_middle_sub, x, y)) {
            ind_end = ind_middle;
        } else
            break;
    }
    return ind_middle;
}

#endif  // RUNNING_UNIT_TEST

float low_pass_filter_angle(float input, float last_output) {
    float a = 0.1f;
    return (a * input + (1 - a) * last_output);
}

float uabs(float value) {
    if (value < 0)
        return -1 * value;
    else
        return value;
}

void solve_feedback_value(float p[3][3], float a[3][3], float b[3][2], float x[3][1], float r, float fb[2][1]) {
    float bt_pn_b[2][2] = {{b[0][0] * (b[0][0] * p[0][0] + b[1][0] * p[1][0] + b[2][0] * p[2][0]) +
        b[1][0] * (b[0][0] * p[0][1] + b[1][0] * p[1][1] + b[2][0] * p[2][1]) +
        b[2][0] * (b[0][0] * p[0][2] + b[1][0] * p[1][2] + b[2][0] * p[2][2]),
                            b[2][1] * (b[0][0] * p[0][2] + b[1][0] * p[1][2] + b[2][0] * p[2][2])},
                           {b[0][0] * b[2][1] * p[2][0] + b[1][0] * b[2][1] * p[2][1] + b[2][0] * b[2][1] * p[2][2],
                            b[2][1] * b[2][1] * p[2][2]}};
    float bt_pn_a[2][3] = {{b[0][0] * p[0][0] + b[1][0] * p[1][0] + b[2][0] * p[2][0],
                            b[0][0] * p[0][1] + b[1][0] * p[1][1] + b[2][0] * p[2][1],
                            b[0][0] * p[0][2] + b[1][0] * p[1][2]
                                + a[0][2] * (b[0][0] * p[0][0] + b[1][0] * p[1][0] + b[2][0] * p[2][0]) +
                                a[1][2] * (b[0][0] * p[0][1] + b[1][0] * p[1][1] + b[2][0] * p[2][1])
                                + b[2][0] * p[2][2]},
                           {b[2][1] * p[2][0], b[2][1] * p[2][1],
                            a[0][2] * b[2][1] * p[2][0] + a[1][2] * b[2][1] * p[2][1] + b[2][1] * p[2][2]}};
    float bt_pn_b_diag = -(bt_pn_b[0][1] * bt_pn_b[1][0]) + bt_pn_b[0][0] * bt_pn_b[1][1] +
        bt_pn_b[0][0] * r + bt_pn_b[1][1] * r + r * r;
    float bt_pn_b_inv_m[2][2] = {{-((bt_pn_b[1][1] + r) / (bt_pn_b_diag)), bt_pn_b[0][1] / (bt_pn_b_diag)},
                                 {bt_pn_b[1][0] / (bt_pn_b_diag), -((bt_pn_b[0][0] + r) / (bt_pn_b_diag))}};
    float matrix_k[2][3] = {{bt_pn_a[0][0] * bt_pn_b_inv_m[0][0] + bt_pn_a[1][0] * bt_pn_b_inv_m[0][1],
                             bt_pn_a[0][1] * bt_pn_b_inv_m[0][0] + bt_pn_a[1][1] * bt_pn_b_inv_m[0][1],
                             bt_pn_a[0][2] * bt_pn_b_inv_m[0][0] + bt_pn_a[1][2] * bt_pn_b_inv_m[0][1]},
                            {bt_pn_a[0][0] * bt_pn_b_inv_m[1][0] + bt_pn_a[1][0] * bt_pn_b_inv_m[1][1],
                             bt_pn_a[0][1] * bt_pn_b_inv_m[1][0] + bt_pn_a[1][1] * bt_pn_b_inv_m[1][1],
                             bt_pn_a[0][2] * bt_pn_b_inv_m[1][0] + bt_pn_a[1][2] * bt_pn_b_inv_m[1][1]}};
    fb[0][0] = x[0][0] * matrix_k[0][0] + x[1][0] * matrix_k[0][1] + x[2][0] * matrix_k[0][2];
    fb[1][0] = x[0][0] * matrix_k[1][0] + x[1][0] * matrix_k[1][1] + x[2][0] * matrix_k[1][2];
}

void solve_riccati_equation(float a[3][3], float b[3][2], float q, float r, float p[3][3]) {
    float A02 = a[0][2], A12 = a[1][2], B00 = b[0][0], B10 = b[1][0], B20 = b[2][0], B21 = b[2][1];
    float p_next[3][3] = {0};
    unsigned int counter;
    p[0][0] = q;
    p[0][1] = 0;
    p[0][2] = 0;
    p[1][0] = 0;
    p[1][1] = q;
    p[1][2] = 0;
    p[2][0] = 0;
    p[2][1] = 0;
    p[2][2] = q;

    for (counter = 0; counter < 500; ++counter) {
        float at_pn_a[3][3] = {{p[0][0], p[0][1],
                                A02 * p[0][0] + A12 * p[0][1] +
                                    p[0][2]},
                               {p[1][0], p[1][1], A02 * p[1][0] + A12 * p[1][1] +
                                   p[1][2]},
                               {A02 * p[0][0] + A12 * p[1][0] + p[2][0], A02 * p[0][1] + A12 * p[1][1] + p[2][1],
                                A02 * p[0][2] + A12 * p[1][2] + A02 *
                                    (A02 *
                                        p[0][0] +
                                        A12 *
                                            p[1][0] +
                                        p[2][0])
                                    + A12 *
                                        (A02 * p[0][1] + A12 * p[1][1] +
                                            p[2][1]) + p[2][2]}};
        float at_pn_b[3][2] = {{B00 * p[0][0] + B10 * p[0][1] + B20 * p[0][2], B21 * p[0][2]},
                               {B00 * p[1][0] + B10 * p[1][1] + B20 * p[1][2], B21 * p[1][2]},
                               {B00 * (A02 * p[0][0] + A12 * p[1][0] + p[2][0]) +
                                   B10 * (A02 * p[0][1] + A12 * p[1][1] + p[2][1])
                                    + B20 * (A02 * p[0][2] + A12 * p[1][2] + p[2][2]),
                                B21 * (A02 * p[0][2] + A12 * p[1][2] +
                                    p[2][2])}};
        float r_bt_pn_b[2][2] = {{B00 * (B00 * p[0][0] + B10 * p[1][0] + B20 * p[2][0]) +
            B10 * (B00 * p[0][1] + B10 * p[1][1] + B20 * p[2][1])
                                      + B20 * (B00 * p[0][2] + B10 * p[1][2] + B20 * p[2][2]) + r,
                                  B21 * (B00 * p[0][2] + B10 * p[1][2] + B20 * p[2][2])},
                                 {B00 * B21 * p[2][0] + B10 * B21 * p[2][1] + B20 * B21 * p[2][2],
                                  B21 * B21 * p[2][2] + r}};
        float bt_pn_a[2][3] =
            {{B00 * p[0][0] + B10 * p[1][0] + B20 * p[2][0], B00 * p[0][1] + B10 * p[1][1] + B20 * p[2][1],
              B00 * p[0][2] + B10 * p[1][2] + A02 *
                  (B00 *
                      p[0][0] +
                      B10 *
                          p[1][0] +
                      B20 *
                          p[2][0])
                  + A12 * (B00 * p[0][1] + B10 * p[1][1] +
                      B20 * p[2][1]) +
                  B20 * p[2][2]},
             {B21 * p[2][0], B21 * p[2][1], A02 * B21 * p[2][0] +
                 A12 * B21 * p[2][1] + B21 * p[2][2]}};

        float r_bt_pn_b_diag = r_bt_pn_b[0][0] * r_bt_pn_b[1][1] - r_bt_pn_b[0][1] * r_bt_pn_b[1][0];

        float r_bt_pn_b_inv[2][2] = {{r_bt_pn_b[1][1] / r_bt_pn_b_diag, -(r_bt_pn_b[0][1] / r_bt_pn_b_diag)},
                                     {-(r_bt_pn_b[1][0] / (-r_bt_pn_b_diag)), r_bt_pn_b[0][0] / r_bt_pn_b_diag}};

        float big_matrix[3][3] =
            {{bt_pn_a[0][0] * (at_pn_b[0][0] * r_bt_pn_b_inv[0][0] + at_pn_b[0][1] * r_bt_pn_b_inv[1][0]) +
                bt_pn_a[1][0] * (at_pn_b[0][0] * r_bt_pn_b_inv[0][1] + at_pn_b[0][1] * r_bt_pn_b_inv[1][1]),
              bt_pn_a[0][1] *
                  (at_pn_b[0][0] * r_bt_pn_b_inv[0][0] + at_pn_b[0][1] * r_bt_pn_b_inv[1][0]) +
                  bt_pn_a[1][1] *
                      (at_pn_b[0][0] * r_bt_pn_b_inv[0][1] + at_pn_b[0][1] * r_bt_pn_b_inv[1][1]),
              bt_pn_a[0][2] *
                  (at_pn_b[0][0] * r_bt_pn_b_inv[0][0] + at_pn_b[0][1] * r_bt_pn_b_inv[1][0]) +
                  bt_pn_a[1][2] *
                      (at_pn_b[0][0] * r_bt_pn_b_inv[0][1] + at_pn_b[0][1] * r_bt_pn_b_inv[1][1])},
             {bt_pn_a[0][0] * (at_pn_b[1][0] * r_bt_pn_b_inv[0][0] + at_pn_b[1][1] * r_bt_pn_b_inv[1][0]) +
                 bt_pn_a[1][0] * (at_pn_b[1][0] * r_bt_pn_b_inv[0][1] + at_pn_b[1][1] * r_bt_pn_b_inv[1][1]),
              bt_pn_a[0][1] *
                  (at_pn_b[1][0] * r_bt_pn_b_inv[0][0] + at_pn_b[1][1] * r_bt_pn_b_inv[1][0]) +
                  bt_pn_a[1][1] *
                      (at_pn_b[1][0] * r_bt_pn_b_inv[0][1] + at_pn_b[1][1] * r_bt_pn_b_inv[1][1]),
              bt_pn_a[0][2] *
                  (at_pn_b[1][0] * r_bt_pn_b_inv[0][0] + at_pn_b[1][1] * r_bt_pn_b_inv[1][0]) +
                  bt_pn_a[1][2] *
                      (at_pn_b[1][0] * r_bt_pn_b_inv[0][1] + at_pn_b[1][1] * r_bt_pn_b_inv[1][1])},
             {bt_pn_a[0][0] * (at_pn_b[2][0] * r_bt_pn_b_inv[0][0] + at_pn_b[2][1] * r_bt_pn_b_inv[1][0]) +
                 bt_pn_a[1][0] * (at_pn_b[2][0] * r_bt_pn_b_inv[0][1] + at_pn_b[2][1] * r_bt_pn_b_inv[1][1]),
              bt_pn_a[0][1] *
                  (at_pn_b[2][0] * r_bt_pn_b_inv[0][0] + at_pn_b[2][1] * r_bt_pn_b_inv[1][0]) +
                  bt_pn_a[1][1] *
                      (at_pn_b[2][0] * r_bt_pn_b_inv[0][1] + at_pn_b[2][1] * r_bt_pn_b_inv[1][1]),
              bt_pn_a[0][2] *
                  (at_pn_b[2][0] * r_bt_pn_b_inv[0][0] + at_pn_b[2][1] * r_bt_pn_b_inv[1][0]) +
                  bt_pn_a[1][2] *
                      (at_pn_b[2][0] * r_bt_pn_b_inv[0][1] + at_pn_b[2][1] * r_bt_pn_b_inv[1][1])}};

        p_next[0][0] = at_pn_a[0][0] - big_matrix[0][0] + q;
        p_next[0][1] = at_pn_a[0][1] - big_matrix[0][1];
        p_next[0][2] = at_pn_a[0][2] - big_matrix[0][2];
        p_next[1][0] = at_pn_a[1][0] - big_matrix[1][0];
        p_next[1][1] = at_pn_a[1][1] - big_matrix[1][1] + q;
        p_next[1][2] = at_pn_a[1][2] - big_matrix[1][2];
        p_next[2][0] = at_pn_a[2][0] - big_matrix[2][0];
        p_next[2][1] = at_pn_a[2][1] - big_matrix[2][1];
        p_next[2][2] = at_pn_a[2][2] - big_matrix[2][2] + q;

        float p_next_max_coefficient = uabs(p_next[0][0]);
        for (unsigned char counter1 = 0; counter1 < 3; ++counter1)
            for (unsigned char counter2 = 0; counter2 < 3; ++counter2)
                if (p_next_max_coefficient < uabs(p_next[counter1][counter2]))
                    p_next_max_coefficient = uabs(p_next[counter1][counter2]);

        float p_max_coefficient = uabs(p[0][0]);
        for (unsigned char counter1 = 0; counter1 < 3; ++counter1)
            for (unsigned char counter2 = 0; counter2 < 3; ++counter2)
                if (p_max_coefficient < uabs(p[counter1][counter2]))
                    p_max_coefficient = uabs(p[counter1][counter2]);

        for (unsigned char counter1 = 0; counter1 < 3; ++counter1)
            for (unsigned char counter2 = 0; counter2 < 3; ++counter2)
                p[counter1][counter2] = p_next[counter1][counter2];

//        printf("accuracy:%f\r\n", uabs(p_max_coefficient - p_next_max_coefficient));

        if (uabs(p_max_coefficient - p_next_max_coefficient) < ITERATION_ACCURACY) {

#ifndef RUNNING_UNIT_TEST
#if OUTPUT_DEBUG_INFO == 1
            printf("\r\niteration counter:%d\r\n", counter);
            _fflush();
#endif
#else
#if OUTPUT_DEBUG_INFO == 1
            printf("\r\niteration counter:%d\r\n", counter);
#endif
#endif
            break;
        }
    }
#if OUTPUT_DEBUG_INFO == 1
#ifndef RUNNING_UNIT_TEST
    if (counter > 400) {
        printf("------------Matrix a------------\r\n");
        for (int counter1 = 0; counter1 < 3; ++counter1) {
            for (int counter2 = 0; counter2 < 3; ++counter2)
                printf("%.4f   ", a[counter1][counter2]);
            printf("\r\n");
            _fflush();
        }
        delayms(40);
        printf("------------Matrix b------------\r\n");
        for (int counter1 = 0; counter1 < 3; ++counter1) {
            for (int counter2 = 0; counter2 < 2; ++counter2)
                printf("%.4f   ", b[counter1][counter2]);
            printf("\r\n");
            _fflush();
        }
        delayms(40);
    }

#else
    if (counter > 400) {
        printf("------------Matrix a------------\r\n");
        for (int counter1 = 0; counter1 < 3; ++counter1) {
            for (int counter2 = 0; counter2 < 3; ++counter2)
                printf("%.4f   ", a[counter1][counter2]);
            printf("\r\n");
        }
        printf("------------Matrix b------------\r\n");
        for (int counter1 = 0; counter1 < 3; ++counter1) {
            for (int counter2 = 0; counter2 < 2; ++counter2)
                printf("%.4f   ", b[counter1][counter2]);
            printf("\r\n");
        }
    }
#endif
#endif
#if OUTPUT_DEBUG_INFO == 1
    printf("------------Matrix P------------\r\n");
    for (int counter1 = 0; counter1 < 3; ++counter1) {
        for (int counter2 = 0; counter2 < 3; ++counter2)
            printf("%f   ", P[counter1][counter2]);
        printf("\r\n");
    }
#endif
}

