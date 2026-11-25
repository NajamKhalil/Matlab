/*
 * _coder_Convolution_info.c
 *
 * Code generation for function '_coder_Convolution_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Convolution.h"
#include "_coder_Convolution_info.h"
#include "Convolution_data.h"

/* Function Definitions */
mxArray *emlrtMexFcnProperties(void)
{
  mxArray *xResult;
  mxArray *xEntryPoints;
  const char * fldNames[4] = { "Name", "NumberOfInputs", "NumberOfOutputs",
    "ConstantInputs" };

  mxArray *xInputs;
  const char * b_fldNames[4] = { "Version", "ResolvedFunctions", "EntryPoints",
    "CoverageInfo" };

  xEntryPoints = emlrtCreateStructMatrix(1, 1, 4, fldNames);
  xInputs = emlrtCreateLogicalMatrix(1, 2);
  emlrtSetField(xEntryPoints, 0, "Name", mxCreateString("Convolution"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", mxCreateDoubleScalar(2.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  xResult = emlrtCreateStructMatrix(1, 1, 4, b_fldNames);
  emlrtSetField(xResult, 0, "Version", mxCreateString("9.0.0.341360 (R2016a)"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  emlrtSetField(xResult, 0, "CoverageInfo", covrtSerializeInstanceData
                (&emlrtCoverageInstance));
  return xResult;
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  const char * data[8] = {
    "789ced59416fd330147651a9c66113b7310921769b34a9191c108ccbcad46a43abda4d3b4c9aa6ce6d9dd5c2b12b272de55671403bf26338f043e00ff027b862"
    "37499b7a5d12d264ed345bb29297f8bd7ceff93dfb3d07e40eab40b435d157b60028c8abe88f80db1e7b744ef455efea3ecf8fe9afa2b71875d0c0715f526821",
    "e0b736b33085d439fdd24580239b913e6a8fde9898a0536ca12316200eb020ac4ae0d59890af78c71e4b062448b84dea7109267ae467e8b113d0e3a9479f972f"
    "cabb46153a04368d7d46fb8cf41ccc688533ab5a3a3d2a7d083e2d5a6b1e5fd877f253dfc94b1bf525dfdb08be8282af30b262af4990abdf3082ffa3c22fe9f3",
    "c3a3b3f2c5feae51e7ec8a43eba534aa6d78aa9dbcde79f5061a0e63a4c90606b2884170d3b05c73b4a103cd1e3524fea235b173508fc20c1cb9008e27de73d1"
    "de35377e97e6e09ff7fba9f16f05f87333f841e09a64fc102cc73c1f44e078a6e090748bb5112f62b128700a89b869a3419df4ec38f2d61579ebb7c83ba4ce08",
    "df7584bc6345de71123bc9be3d42616cfb308cb15abeb9e6f1ab3fcf9d5f3a2e628c1f82e5888b7a048e0d0587a467f97115d39ebf912d223e4e14792749ec75"
    "7b7c8cd44b61dfd0f11173fc102c477ca4e0c7760b12c8cb5737ec9e45de5457f8eb49ec32330e7c35dcbc31a1fffcf85bd379531afe7f57f3bc17816355c121",
    "696cd39e85386e39b25cba69ef2cfcbea6f0d792d843ae07261ea07697097318537a884541d70b0fc7efa3fc7545c121696c9b586c279d7b551f4ff9bb8b5fd7"
    "c713feacfd3d2aaf3d03d3f32ce9b4fd7dd3c4dc764c1ca71e78a1e091b410df10621b26e384b16e83f5113709fbdc687550eb93ab67d83993df82727dfb7c8f",
    "c073a9f05d26b14f200ff4cc15a2cf3cf9cff0bd8e8b78e37f82f079ff06a6e75dd259cffb66f8804607912ee2d1fe9e0337cf55e5da9b45dd3c88905751e455"
    "92da51d947e41ea2f78fece364d1f3bb17f1fdb8f5c17fff87e840aeeb02b72d03bfde0fc2f78324f580106dc141b6f191f6391a22e2c67091a75047e87c29e6",
    "f8871a1f98ded7f8c054c7c7843febf8b806e1f37cd77576d2fa60de73a545e78b3a4f5aecf9e9b2fc57d6e748fa1c29eb78f807b105083f",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 10264U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_Convolution_info.c) */
