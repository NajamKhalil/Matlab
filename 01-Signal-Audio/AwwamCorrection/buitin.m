%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
im=imread('cameraman.tif');
[r,c]=size(im);
%ButterWorth using spatial Domain
filterMatrix=zeros(3,3);
[fr,fc]=size(filterMatrix);
n=1;%order
D0=10;
filterMatrix = fspecial('gaussian',100);
filteredResultSpatial=imfilter(im,filterMatrix);
subplot 121
imshow(im,[]);
title('Original Image');
subplot 122
imshow(filteredResultSpatial,[]);
title('filteredResultSpatial domain Image');