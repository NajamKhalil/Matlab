/*
 * Convolution_terminate.c
 *
 * Code generation for function 'Convolution_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Convolution.h"
#include "Convolution_terminate.h"
#include "_coder_Convolution_mex.h"
#include "Convolution_data.h"

/* Function Definitions */
void Convolution_atexit(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);

  /* Free instance data */
  covrtFreeInstanceData(&emlrtCoverageInstance);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void Convolution_terminate(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (Convolution_terminate.c) */
