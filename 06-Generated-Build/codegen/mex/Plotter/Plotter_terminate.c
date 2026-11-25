/*
 * Plotter_terminate.c
 *
 * Code generation for function 'Plotter_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Plotter.h"
#include "Plotter_terminate.h"
#include "_coder_Plotter_mex.h"
#include "Plotter_data.h"

/* Function Definitions */
void Plotter_atexit(void)
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

void Plotter_terminate(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (Plotter_terminate.c) */
