@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2016a
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2016a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=Plotter_mex
set MEX_NAME=Plotter_mex
set MEX_EXT=.mexw64
call "C:\PROGRA~1\MATLAB\R2016a\sys\lcc64\lcc64\mex\lcc64opts.bat"
echo # Make settings for Plotter > Plotter_mex.mki
echo COMPILER=%COMPILER%>> Plotter_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> Plotter_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> Plotter_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> Plotter_mex.mki
echo LINKER=%LINKER%>> Plotter_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> Plotter_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> Plotter_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> Plotter_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> Plotter_mex.mki
echo BORLAND=%BORLAND%>> Plotter_mex.mki
echo OMPFLAGS= >> Plotter_mex.mki
echo OMPLINKFLAGS= >> Plotter_mex.mki
echo EMC_COMPILER=lcc64>> Plotter_mex.mki
echo EMC_CONFIG=optim>> Plotter_mex.mki
"C:\Program Files\MATLAB\R2016a\bin\win64\gmake" -B -f Plotter_mex.mk
