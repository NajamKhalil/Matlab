%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
image = rgb2gray(imread('peppers.png'));
filter=[0,-1,0;-1,4,-1,;0,-1,0];
filteredImage = conv2(double(image), filter, 'same');
filter=fspecial('gaussian');
filteredImage =imfilter(filteredImage,filter); %Gaussain
[r,c]=size(image);

subplot 121
imshow(image,[]);
title('Original');
subplot 122
imshow(uint8(filteredImage),[]);
title('Lapalace Filtered');