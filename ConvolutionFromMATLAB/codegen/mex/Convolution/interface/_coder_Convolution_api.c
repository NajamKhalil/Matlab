/*
 * _coder_Convolution_api.c
 *
 * Code generation for function '_coder_Convolution_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Convolution.h"
#include "_coder_Convolution_api.h"
#include "Convolution_data.h"

/* Function Declarations */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[5];
static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[5];
static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *input1,
  const char_T *identifier))[5];
static const mxArray *emlrt_marshallOut(const real_T u[9]);

/* Function Definitions */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[5]
{
  real_T (*y)[5];
  y = c_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[5]
{
  real_T (*ret)[5];
  static const int32_T dims[2] = { 1, 5 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims);
  ret = (real_T (*)[5])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *input1,
  const char_T *identifier))[5]
{
  real_T (*y)[5];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(input1), &thisId);
  emlrtDestroyArray(&input1);
  return y;
}
  static const mxArray *emlrt_marshallOut(const real_T u[9])
{
  const mxArray *y;
  const mxArray *m0;
  static const int32_T iv0[2] = { 0, 0 };

  static const int32_T iv1[2] = { 1, 9 };

  y = NULL;
  m0 = emlrtCreateNumericArray(2, iv0, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m0, (void *)u);
  emlrtSetDimensions((mxArray *)m0, iv1, 2);
  emlrtAssign(&y, m0);
  return y;
}

void Convolution_api(const mxArray * const prhs[2], const mxArray *plhs[1])
{
  real_T (*output)[9];
  real_T (*input1)[5];
  real_T (*input2)[5];
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  output = (real_T (*)[9])mxMalloc(sizeof(real_T [9]));

  /* Marshall function inputs */
  input1 = emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "input1");
  input2 = emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "input2");

  /* Invoke the target function */
  Convolution(&st, *input1, *input2, *output);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(*output);
}

/* End of code generation (_coder_Convolution_api.c) */
