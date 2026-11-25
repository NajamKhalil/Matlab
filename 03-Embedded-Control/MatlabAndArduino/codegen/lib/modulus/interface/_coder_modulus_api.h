/*
 * File: _coder_modulus_api.h
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 05-Oct-2020 16:00:10
 */

#ifndef _CODER_MODULUS_API_H
#define _CODER_MODULUS_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_modulus_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern real_T modulus(real_T inputArg1, real_T inputArg2);
extern void modulus_api(const mxArray * const prhs[2], int32_T nlhs, const
  mxArray *plhs[1]);
extern void modulus_atexit(void);
extern void modulus_initialize(void);
extern void modulus_terminate(void);
extern void modulus_xil_shutdown(void);
extern void modulus_xil_terminate(void);

#endif

/*
 * File trailer for _coder_modulus_api.h
 *
 * [EOF]
 */
