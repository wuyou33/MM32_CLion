/**************************************************************************/ /**
    \file       fast_math.c
    \brief      fast math features function Header File
    \author     Lao·Zhu & ZGL
    \version    V1.3.3
    \date       22. March 2022
******************************************************************************/

#ifndef MAIN_C_MATH_FAST_MATH_H_
#define MAIN_C_MATH_FAST_MATH_H_

#define fast_absf(x) ((x < 0) ? -1.0f * x : x)

float atan_fast(float x);
float fast_sqrt(float value);
float my_acos(float x);
float my_asin(float x);
float my_pow(float x, int n);

#endif //MAIN_C_MATH_FAST_MATH_H_
