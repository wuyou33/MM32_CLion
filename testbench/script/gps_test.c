//
// Created by 16625 on 2021-12-23.
//

#include "gps_test.h"
#include "CUnit/Basic.h"
#include "gps_parser.h"

//
//TODO 增加代码覆盖率
//

void test_nmea_comma_position() {
    char data[] = "$GPGGA,235316.000,3959.9925,S,12000.0090,E,1,06,1.21,62.77,M,0.00,M,,*7B";
    char n1 = nmea_comma_position(data, 2);
    CU_ASSERT_EQUAL(*(data + n1), '3')
    CU_ASSERT_NOT_EQUAL(*(data + n1), 'J')
    CU_ASSERT_EQUAL(n1, 18)
    CU_ASSERT_NOT_EQUAL(n1, 17)
    char n2 = nmea_comma_position(data, 3);
    CU_ASSERT_EQUAL(*(data + n2), 'S')
    CU_ASSERT_NOT_EQUAL(*(data + n2), '0')
    CU_ASSERT_EQUAL(n2, 28)
    CU_ASSERT_EQUAL(n2 - n1, 10)
    CU_ASSERT_NOT_EQUAL(n2, 29)
    short n3 = nmea_comma_position(data, 20);
    CU_ASSERT_NOT_EQUAL(*(data + n3), '0')
    CU_ASSERT_EQUAL(n3, 0XFF)
    CU_ASSERT_NOT_EQUAL(n3, sizeof(data))
}

void test_nmea_pow() {
    CU_ASSERT_EQUAL(nmea_pow(10, 2), 100)
    CU_ASSERT_NOT_EQUAL(nmea_pow(10, 8), 100)
    CU_ASSERT_EQUAL(nmea_pow(10, 0), 1)
    CU_ASSERT_NOT_EQUAL(nmea_pow(10, 0), 10)
    CU_ASSERT_NOT_EQUAL(nmea_pow(10, 8), 1)
}

void test_nmea_str2num() {
    char *data[] = {"3424,", "-234,", "34.32,", "-23.43,", "0.661,"}, d = 1;
    CU_ASSERT_EQUAL(nmea_str2num(data[0], &d), 3424)
    CU_ASSERT_EQUAL(nmea_str2num(data[1], &d), -234)
//    CU_ASSERT_EQUAL(nmea_str2num(p[2]), 34.32);   //TRUE
//    CU_ASSERT_EQUAL(nmea_str2num(p[3]), -23.43);  //TRUE
//    CU_ASSERT_EQUAL(nmea_str2num(p[4]), 0.661);   //TRUE
    CU_ASSERT_NOT_EQUAL(nmea_str2num(data[0], &d), 13424)
    CU_ASSERT_NOT_EQUAL(nmea_str2num(data[1], &d), -13424)
    CU_ASSERT_NOT_EQUAL(nmea_str2num(data[2], &d), 13.424)
    CU_ASSERT_NOT_EQUAL(nmea_str2num(data[3], &d), -13.424)
    CU_ASSERT_NOT_EQUAL(nmea_str2num(data[4], &d), 0.134)

}

void test_nmea_gpgga_analysis() {
    char data[] = "$GNGGA,235316.000,3959.9925,S,12000.0090,E,1,06,1.21,62.77,M,0.00,M,,*7B";
    nmea_gga gps_gga = {0};
    nmea_gpgga_analysis(&gps_gga, data);
    CU_ASSERT_EQUAL(gps_gga.latitude_direction, 'S')
    CU_ASSERT_EQUAL(gps_gga.checksum, 0X7B)
    CU_ASSERT_EQUAL(gps_gga.height_unit_altitude, 'M')
    CU_ASSERT_EQUAL(gps_gga.latitude, 39599925)
}

void test_nmea_gpant_analysis() {
    char data[] = "$GNTXT,01,01,01,ANTENNA SHORT*63";
    nmea_ant gps_ant = {0};
    nema_gpant_analysis(&gps_ant, data);
    CU_ASSERT_EQUAL(gps_ant.xx, 1)
    CU_ASSERT_EQUAL(gps_ant.yy, 1)
    CU_ASSERT_EQUAL(gps_ant.zz, 1)
    CU_ASSERT_STRING_EQUAL(gps_ant.text_message, "ANTENNA SHORT")
    CU_ASSERT_EQUAL(gps_ant.checksum, 0x63)
}
