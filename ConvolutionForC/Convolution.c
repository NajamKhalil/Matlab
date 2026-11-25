/*
 * File: Convolution.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 05-Oct-2020 18:36:12
 */

/* Include Files */
#include "Convolution.h"

/* Function Definitions */

/*
 * Arguments    : const double input1[5]
 *                const double input2[5]
 *                double output[9]
 * Return Type  : void
 */
void Convolution(const double input1[5], const double input2[5], double output[9])
{
  int jC;
  int jA2;
  double s;
  int k;
  for (jC = 0; jC < 9; jC++) {
    if (5 < jC + 1) {
      jA2 = 4;
    } else {
      jA2 = jC;
    }

    s = 0.0;
    if (5 < jC + 2) {
      k = jC - 4;
    } else {
      k = 0;
    }

    while (k + 1 <= jA2 + 1) {
      s += input1[k] * input2[jC - k];
      k++;
    }

    output[jC] = s;
  }
}

/*
 * File trailer for Convolution.c
 *
 * [EOF]
 */
