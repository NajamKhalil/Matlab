/*
 * Convolution.h
 *
 * Code generation for function 'Convolution'
 *
 */

#ifndef CONVOLUTION_H
#define CONVOLUTION_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "covrt.h"
#include "rtwtypes.h"
#include "Convolution_types.h"

/* Function Declarations */
extern void Convolution(const emlrtStack *sp, const real_T input1[5], const
  real_T input2[5], real_T output[9]);

#endif

/* End of code generation (Convolution.h) */
