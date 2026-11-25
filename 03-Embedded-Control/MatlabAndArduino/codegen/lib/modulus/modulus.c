/*
 * File: modulus.c
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 05-Oct-2020 16:00:10
 */

/* Include Files */
#include <math.h>
#include "modulus.h"

/* Function Definitions */

/*
 * Arguments    : double inputArg1
 *                double inputArg2
 * Return Type  : double
 */
double modulus(double inputArg1, double inputArg2)
{
  double outputArg1;
  boolean_T rEQ0;
  double q;
  outputArg1 = inputArg1;
  if (inputArg2 == 0.0) {
    if (inputArg1 == 0.0) {
      outputArg1 = inputArg2;
    }
  } else if (inputArg1 == 0.0) {
    outputArg1 = 0.0 / inputArg2;
  } else {
    outputArg1 = fmod(inputArg1, inputArg2);
    rEQ0 = (outputArg1 == 0.0);
    if ((!rEQ0) && (inputArg2 > floor(inputArg2))) {
      q = fabs(inputArg1 / inputArg2);
      rEQ0 = (fabs(q - floor(q + 0.5)) <= 2.2204460492503131E-16 * q);
    }

    if (rEQ0) {
      outputArg1 = 0.0;
    } else {
      if ((inputArg1 < 0.0) != (inputArg2 < 0.0)) {
        outputArg1 += inputArg2;
      }
    }
  }

  return outputArg1;
}

/*
 * File trailer for modulus.c
 *
 * [EOF]
 */
