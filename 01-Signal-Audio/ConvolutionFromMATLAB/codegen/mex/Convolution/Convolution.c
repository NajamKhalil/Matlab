/*
 * Convolution.c
 *
 * Code generation for function 'Convolution'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Convolution.h"
#include "Convolution_data.h"

/* Function Definitions */
void Convolution(const emlrtStack *sp, const real_T input1[5], const real_T
                 input2[5], real_T output[9])
{
  int32_T jC;
  int32_T jA2;
  real_T s;
  int32_T i0;
  int32_T k;
  (void)sp;
  covrtLogFcn(&emlrtCoverageInstance, 0U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 0U, 0);
  for (jC = 0; jC < 9; jC++) {
    if (5 < jC + 1) {
      jA2 = 4;
    } else {
      jA2 = jC;
    }

    s = 0.0;
    if (5 < jC + 2) {
      i0 = jC - 3;
    } else {
      i0 = 1;
    }

    for (k = i0 - 1; k + 1 <= jA2 + 1; k++) {
      s += input1[k] * input2[jC - k];
    }

    output[jC] = s;
  }
}

/* End of code generation (Convolution.c) */
