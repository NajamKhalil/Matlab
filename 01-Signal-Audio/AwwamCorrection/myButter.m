%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
im=rgb2gray(imread('butter.png'));
[r,c]=size(im);
%ButterWorth using spatial Domain
filterMatrix=zeros(r,c);
[fr,fc]=size(filterMatrix);
n=2;%order
D0=40;
for u=1:r
    for v=1:c
        distance=sqrt((u-r/2)^2 + (v-c/2)^2);
        filterMatrix(u,v)=1/(1+(distance/D0)^(2*n));
    end
end
filteredResultSpatial=imfilter(im,filterMatrix);
%ButterWorth lowpass using DFT Domain
figure
imageFFT=fft2(im);
filterInFFT=fftshift(filterMatrix);
%filterInFFT=fft2(filterMatrix,r,c);
filteredResultFFT=ifft2(filterInFFT.*imageFFT);
subplot 221
imshow(im,[]);
s=sprintf('Original Image n=%d,D0=%d',n,D0);
title(s);
subplot 222
%meshz(1:r,1:c,fftshift(log(filterInFFT)));
imshow(abs(fftshift((filterInFFT))));
title('lowpass filteredResultSpatial Image');
subplot 223
meshz(abs(fftshift((filterInFFT))));
title('lowpass mesh of Filter');
subplot 224
imshow(uint8(filteredResultFFT),[]);
title('lowpass filteredResultFrequency Image');
%ButterWorth highpass using DFT Domain
figure
imageFFT=fft2(im);
filterInFFT=fftshift(max(max(filterMatrix))-filterMatrix); %since identity matrix does do any thing thus we simple negtive it to make high pass
filteredResultFFT=ifft2(filterInFFT.*imageFFT);
subplot 221
imshow(im,[]);
s=sprintf('Original Image n=%d,D0=%d',n,D0);
title(s);
subplot 222
%meshz(1:r,1:c,fftshift(log(filterInFFT)));
imshow(abs(fftshift((filterInFFT))));
title('highpass filteredResultSpatial Image');
subplot 223
meshz(abs(fftshift((filterInFFT))));
title('highpass mesh of Filter');
subplot 224
imshow((filteredResultFFT),[]);
title( 'highpass filteredResultFrequency Image');
clear all;
syms u v n D0
pretty(1/(1+((sqrt(((u-0-1)^2)+((v-0-1)^2)))/D0)^(2*n)))