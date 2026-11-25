/*
 * _coder_Plotter_info.c
 *
 * Code generation for function '_coder_Plotter_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Plotter.h"
#include "_coder_Plotter_info.h"
#include "Plotter_data.h"

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
  xInputs = emlrtCreateLogicalMatrix(1, 0);
  emlrtSetField(xEntryPoints, 0, "Name", mxCreateString("Plotter"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", mxCreateDoubleScalar(0.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", mxCreateDoubleScalar(0.0));
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
  const char * data[17] = {
    "789ced1d4d6f1b4574429b50541538b51428500e88b652b6142982c2214ddb10b771ebb6294484ca59dbe378c47ad7da5d07f7668104151212478e48fc050e9c"
    "51afbd953be280c4897fd030b3bb8ed7c3c633d999b57793b792953c7bdeccfb9cf766e6ed2e9a299511bd5ea49f63bf2034c7fed2cf7328bc662378867e16a2",
    "bfe1f747d18908fe9a7eea8eede39e1ffe689b6d8c0657c36913dbb4fdb5871d8c5cec39d6366e04bf348985d7481baf3a31608550a0bd1cfb6917603fb92d6f"
    "b76764c581f0627caca0211f4713f83819e3e3e508deb8fee0fa65a36cfa9659332a96e3fbd89d6f87fd7d20e86f96eb6f369087e5d8480e7f8ec39f0ba4d6ad",
    "5938c4ef09f03fe1f019bc515a5dbffee0ea65a3e23a5baed97e8b09d133ca57d656af2c19772f5d7c6fc1347cc7b16a4ecfc06dcbb048cd6887ec3b1dcf08e8"
    "a702e0e99f4b187f2636fe0bd1f708f53fae9dfee34a7afcf0ca03febb31fc99047c14fb9ba6fdb4f55b118cff26373e83eb4e833a08a14eefdaa6354fbca52e",
    "b1fc927dabdbc62ea96bb1fb4702fc750e7f3d8d5cd8e742c08d7161c08ec1b333df56b0a3a7e79f3c053f90682fd2f7a76854df0cd6e4076789576d5a54ffd5"
    "68e296b1df631c3d0c265e93d8c4c73aecbf2fc05fe5f05715e5812dfa8f31e080453f25bbf908e67fb9f67d940f3d431c803800fe903cefc9e6fdc423765312",
    "5f75fe2f71f8254d72a01c844248e003e6ffffe32394adbd4f4acf30ffc3fc5f047fc8f7fc6f9bbaf67d4472c86a5ea01cc0fc1fc39fb6bd4f4acf30ffc3fc9f"
    "077f10e93b6ffb404971a069398e9b20ef62c48166d736020e74c481f2e63b1007f2190792f50c7100e200f8c3900e913fbcc6d1c160ce1fbcba6999eefc202a",
    "84fd5e1cd3efe08af73bc013f9c17d0eef7e1ab924fac185908f988c14ce8717607d502c3fd814d0718ea383c19c1f989d8ef5f05e6044cb5dbbee13c72ed915"
    "cbace3d8388b82715ee2c6617033eaadda32ed060d18ac9f9f04fdd4b87e6a69e496e8277bb33910a882dd3d7bf63ef88d4cfbbceb3fabb892759e05f1e560f9",
    "8948df77d1a8be19ac6bbd5d6fe1fa97ae696fe1647925d1f33c470f835d6c5a6db327ccab66a2ef86f84751bd65ba3271f62637ee4d453984fb7011e5d1c400"
    "fbadd3cfa726a5e745011dc7393a184cbbae0e6c7dd04f5a7b17f9fd5eebe98a9a203a2ed9367d6cc458515a4f83dd4bb6cf9bbe45f9cf698e1e0673f90f4d14",
    "4cbf4cbfb3627c66e50f5ae26062de3364437d7d00798f6cfb1fd1787d7f8e46f5cd605d794fa0f1f090a16a617bcb6f25cb0dce9d211e80fdcbd83fd4dd81fd"
    "1f5efb87f3e65dfb81f366c9f679b57f51fe7e6484ae23c8ac795aec7ed2f7e185764fa957bbcf7215ec5daefdb4f50b75155057017ea065df273af76233ff90",
    "afacea29ee7178f7d2c863ec7957289b013d29e3c099bf2f431c2882fdaf0bc67f9b1b9fc1e23a8a217f8b82fe65eb2744f9e106d7cf461a39c99e9fabfbc7a9"
    "1da89bd0b22e9896deb38a1b59e74f103f0e977f1465dd8c3b9ed279d9e4e328db27a5542bad97d1e31fae819de7334f1ad5af86fa38e22d3387b96a999eb7cb",
    "5756e7c36b1c3d6b69e4b1c73a79c886ea7359e07cb828f69fa60e8e1559a8ceeb69ed5c639d48280404e76079a80b9ab4bea12e08ea82a6e90f7d345edfb7d0"
    "a8be19ac2bbf6f9bbd60710ae760fbb66f3807936c9fd7f56b1abba55365500aad32bff7057837b8716f28ca23aaf70928d7703f18e43992ed4571fc3334aa67",
    "06ebb27b96e4c46c5f579e43ec06ee9589dd9de47e6676f9ce901d0d7ef1d7eb3e9c071f44bf7895a387c1497e718d6c93064ed643b1f6f963eca8df27067e21"
    "d9be687ef106470f83593fec71464dc7b51ca75375b6b14bfbfdaa1adc78a9563721ca233739bc4d45f944ee31861f95faa13ee45192ed7f43e3f5fe2d1ad53b",
    "83b3d6fbd9f10daa2d6c75b09b6e9dc09e0cc9f0560478a738be199c14974ab62fb5ce5ee6fa5b4e2bc726e9e146c7a154044fb94c7aafc93eecec43f013b9f6"
    "d3d6efa260fc13dcf80c269e1d9662faec753dd9aeab6f73e3dfd6c27f8c7eb57362b073c9f6458f07b0ef04fb4ee01ffafd83d845f50f62837f0cf1b3f68f47",
    "68bc9ef3b6ce96dd9765ef2c3c40fbb2013bb02f3bc43f6c7eb122a0e7158e1e0627f945c5ea7a93f0873b1cfe9d34f2d9db1f181b3aee57067f906c9f377fc8"
    "eafc4ee467fbdd679a72dc80f33c0e3f6b3f11d9cf7edf7fbcdf3a248fd805ae43f288da7b8fe1f913b2eda7ad5f7df793318b1ff255dcfb903da2e13e4ba833",
    "956c3f6dfbdf148c7f8e1b9fc1f03c77789efb5ef859fb4bdef52f8a276738fa18ccf953d7c315d36d3aee55c7f67c94ed7d0b5adea39528af5136d4ce9bfb8f"
    "9f9c07ff90699f377d8bd62112fb45bb1d67995765b74fb44bbe867da2feccafdf801f1c863801757c50c7077e92ddfabcb875e0b04e3f8cfba975a7c8f77552",
    "ea613ff500ef270df5ab6fbe66163fe4abb8fba9a16c06f4c03c7db0ed7f53303eeca7c27e6a9efc25effacf2a9e143fff87b812c72f5afe2fb2bfa4e77a79dd"
    "5a87f6a2741e208a8fd7b87119bc519237db282cd2769dd6a58611913cdf19c831a59deef83f4fd54e7fffe27b3de317cd4ef76b674cdb9358a72e71f80ca676",
    "5a5e4a69a881952ae71d7feeececfcab6027f9c12f9a9d8aec6d96eb8fc13ef199b9653a9fee61a769e7d380640df9f13fc7bf83b82f6aff1f80ebbd95",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 41752U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_Plotter_info.c) */
