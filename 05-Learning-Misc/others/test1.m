%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
im=imread('tire.tif');
[r,c]=size(im);
paddedImage=zeros(size(im)+2);
paddedImage(2:r+1,2:c+1)=im;
subplot 211
imshow(im,[]);
title('Original');
subplot 212
imshow(paddedImage,[]);
title('Original');