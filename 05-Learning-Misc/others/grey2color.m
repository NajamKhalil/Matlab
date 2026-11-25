%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
grayImage=double(imread('tire.tif'))/255;
[r,c]=size(grayImage);
colorImage=zeros(r,c,3);
colorImage(:,:,1)=0.33*grayImage(:,:);
colorImage(:,:,2)=grayImage(:,:);
colorImage(:,:,3)=0.11*grayImage(:,:);
%plotting
subplot 121
imshow(grayImage,[]);
title('grayImage')
subplot 122
imshow(colorImage,[]);
title('colorImage')