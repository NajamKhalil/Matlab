/*
 * cos.c
 *
 * Code generation for function 'cos'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Plotter.h"
#include "cos.h"

/* Function Definitions */
void b_cos(real_T x[901])
{
  int32_T k;
  for (k = 0; k < 901; k++) {
    x[k] = muDoubleScalarCos(x[k]);
  }
}

/* End of code generation (cos.c) */
