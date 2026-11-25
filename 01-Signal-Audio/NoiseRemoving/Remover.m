%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
image=rgb2gray(imread('NoisyMe.jpg'));

H = fspecial('sobel');
filteredImage = imfilter(image,H,'replicate');
imshow(filteredImage);


subplot 121
imshow(image,[]);
title('Original');
subplot 122
imshow(uint8(filteredImage),[]);
title(' Weighted Average Filtered');