%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

close all;
clear all;
clc
image=imread('football.jpg');
subplot 131
imshow(image);
rgbhsv = rgb2hsv(image);
title('ORIGINAL IMAGE')
image=im2double(image);
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
num=0.5 *((r-g)+(r-b));
den=sqrt((r-g).^2 +((r-b).*(g-b)));
theta=acos(num./(den+eps));
H=theta;
H(b>g)=(2*pi) -H(b>g);
H=H/(2*pi);
num=min(min(r,g),b);
den=r+g+b;
den(den==0)=eps;
S=1-3.* num./den;
H(S==0)=0;
I=(r+g+b)/3;
hsiimage=cat(3,H,S,I);
subplot 132
imshow(hsiimage);
title('HSI IMAGE By formual') 
subplot 133
imshow(rgbhsv);
title('HSI IMAGE By Buitin') 