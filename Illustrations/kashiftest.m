%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
image=double(imread('cameraman.tif'));
%taking fourier transform
FFT=fft2(image);
%taking log of fourier transform
logFFT=log(FFT);
%taking shifterFFT of fourier transform
FFTShift=fftshift(logFFT);
%phase
phaseTan = atan(imag(FFT)./real(FFT));
%Plotting
subplot 231
imshow(image,[]);
title('Orginal Image');
subplot 232
imshow(abs(FFT),[]);
title('FFT');
subplot 233
imshow(abs(logFFT),[]);
title('log(FFT)');
subplot 234
imshow(abs(FFTShift),[]);
title('Shiftedlog(FFT)');
subplot 235
imshow(phaseTan,[]);
title('tan-1(y/x)');