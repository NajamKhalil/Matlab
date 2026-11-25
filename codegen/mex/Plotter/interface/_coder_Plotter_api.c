/*
 * _coder_Plotter_api.c
 *
 * Code generation for function '_coder_Plotter_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Plotter.h"
#include "_coder_Plotter_api.h"
#include "Plotter_data.h"

/* Function Definitions */
void Plotter_api(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;

  /* Invoke the target function */
  Plotter(&st);
}

/* End of code generation (_coder_Plotter_api.c) */
