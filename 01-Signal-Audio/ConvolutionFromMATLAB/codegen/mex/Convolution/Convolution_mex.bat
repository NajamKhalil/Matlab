@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2016a
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2016a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=Convolution_mex
set MEX_NAME=Convolution_mex
set MEX_EXT=.mexw64
call "C:\PROGRA~1\MATLAB\R2016a\sys\lcc64\lcc64\mex\lcc64opts.bat"
echo # Make settings for Convolution > Convolution_mex.mki
echo COMPILER=%COMPILER%>> Convolution_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> Convolution_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> Convolution_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> Convolution_mex.mki
echo LINKER=%LINKER%>> Convolution_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> Convolution_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> Convolution_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> Convolution_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> Convolution_mex.mki
echo BORLAND=%BORLAND%>> Convolution_mex.mki
echo OMPFLAGS= >> Convolution_mex.mki
echo OMPLINKFLAGS= >> Convolution_mex.mki
echo EMC_COMPILER=lcc64>> Convolution_mex.mki
echo EMC_CONFIG=optim>> Convolution_mex.mki
"C:\Program Files\MATLAB\R2016a\bin\win64\gmake" -B -f Convolution_mex.mk
