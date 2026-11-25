/*
 * File: _coder_palanFinder_api.h
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 06-Oct-2020 14:35:03
 */

#ifndef _CODER_PALANFINDER_API_H
#define _CODER_PALANFINDER_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_palanFinder_api.h"

/* Type Definitions */
#ifndef typedef_rtString
#define typedef_rtString

typedef struct {
  char_T Value[5];
} rtString;

#endif                                 /*typedef_rtString*/

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern boolean_T palanFinder(rtString String);
extern void palanFinder_api(const mxArray * const prhs[1], int32_T nlhs, const
  mxArray *plhs[1]);
extern void palanFinder_atexit(void);
extern void palanFinder_initialize(void);
extern void palanFinder_terminate(void);
extern void palanFinder_xil_shutdown(void);
extern void palanFinder_xil_terminate(void);

#endif

/*
 * File trailer for _coder_palanFinder_api.h
 *
 * [EOF]
 */
