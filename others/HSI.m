%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
%Creating Matrix
fourColormatrix=zeros(1000,1000,3);
%R Matrix                               %G Matrix                               %B Matrix
fourColormatrix(1:500,1:500,1)=0;       fourColormatrix(1:500,1:500,2)=1;       fourColormatrix(1:500,1:500,3)=0;
fourColormatrix(1:500,501:1000,1)=1;    fourColormatrix(1:500,501:1000,2)=0;    fourColormatrix(1:500,501:1000,3)=0;
fourColormatrix(501:1000,1:500,1)=0;    fourColormatrix(501:1000,1:500,2)=0;    fourColormatrix(501:1000,1:500,3)=1;
fourColormatrix(501:1000,501:1000,1)=0; fourColormatrix(501:1000,501:1000,2)=1; fourColormatrix(501:1000,501:1000,3)=0;
%Part a) HSI Conversion
hsiimage=rgb2hsv(fourColormatrix);

image=hsiimage;

r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
num=0.5 * ((r-g)+(r-b));
den=sqrt((r-g).^2 +(r-b).*(g-b));
theta=acos(num./(den+eps));
H=theta;
H(b>g)=2*pi -H(b>g);
H=H/(2*pi);
num=min(min(r,g),b);
den=r+g+b;
den(den==0)=eps;
S=1-3.* num./den;
H(S==0)=0;
I=(r+g+b)/3;
hsiimage=cat(3,H,S,I);

subplot 221
imshow(hsiimage,[]);
title('HSI of 1000x1000')
subplot 222
imshow(H,[]);
title('H')
subplot 223
imshow(S,[]);
title('S')
subplot 224
imshow(I,[]);
title('I')
%Part b) 
SmoothingParameter=250;
SmoothingOnS=imgaussfilt(S, SmoothingParameter);
hsiSsmooth=cat(3,H,SmoothingOnS,I);
rgbSsmooth=hsv2rgb(hsiSsmooth);

%Part c)
SmoothingOnH=imgaussfilt(H, SmoothingParameter);
hsiHsmooth=cat(3,H,SmoothingOnH,I);
rgbHsmooth=hsv2rgb(hsiHsmooth);
%Plotting
figure
subplot 231
imshow(fourColormatrix,[]);
title('Matrix 1000x1000')
subplot 234
imshow(hsiimage,[]);
title('HSI of 1000x1000')
subplot 232
imshow(hsiSsmooth,[]);
title('hsiSsmooth')
subplot 233
imshow(rgbSsmooth,[]);
title('rgbSsmooth')
subplot 235
imshow(hsiHsmooth,[]);
title('hsiHsmooth')
subplot 236
imshow(rgbHsmooth,[]);
title('rgbHsmooth')