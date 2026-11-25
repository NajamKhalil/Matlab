/*
 * _coder_Plotter_mex.c
 *
 * Code generation for function '_coder_Plotter_mex'
 *
 */

/* Include files */
#include "Plotter.h"
#include "_coder_Plotter_mex.h"
#include "Plotter_terminate.h"
#include "_coder_Plotter_api.h"
#include "Plotter_initialize.h"
#include "Plotter_data.h"

/* Function Declarations */
static void Plotter_mexFunction(int32_T nlhs, int32_T nrhs);

/* Function Definitions */
static void Plotter_mexFunction(int32_T nlhs, int32_T nrhs)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 0) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 0, 4, 7,
                        "Plotter");
  }

  if (nlhs > 0) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 7,
                        "Plotter");
  }

  /* Call the function. */
  Plotter_api();

  /* Module termination. */
  Plotter_terminate();
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  (void)plhs;
  (void)prhs;
  mexAtExit(Plotter_atexit);

  /* Initialize the memory manager. */
  /* Module initialization. */
  Plotter_initialize();

  /* Dispatch the entry-point. */
  Plotter_mexFunction(nlhs, nrhs);
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_Plotter_mex.c) */
