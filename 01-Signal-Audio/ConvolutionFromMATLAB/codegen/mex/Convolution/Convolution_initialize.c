/*
 * Convolution_initialize.c
 *
 * Code generation for function 'Convolution_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Convolution.h"
#include "Convolution_initialize.h"
#include "_coder_Convolution_mex.h"
#include "Convolution_data.h"

/* Function Declarations */
static void Convolution_once(void);

/* Function Definitions */
static void Convolution_once(void)
{
  /* Allocate instance data */
  covrtAllocateInstanceData(&emlrtCoverageInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&emlrtCoverageInstance,
                  "E:\\Matlab\\ConvolutionFromMATLAB\\Convolution.m", 0, 1, 1, 0,
                  0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&emlrtCoverageInstance, 0, 0, "Convolution", 0, -1, 82);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&emlrtCoverageInstance, 0, 0, 51, -1, 77);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&emlrtCoverageInstance, 0U);
}

void Convolution_initialize(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  mexFunctionCreateRootTLS();
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, 0);
  emlrtEnterRtStackR2012b(&st);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    Convolution_once();
  }
}

/* End of code generation (Convolution_initialize.c) */
