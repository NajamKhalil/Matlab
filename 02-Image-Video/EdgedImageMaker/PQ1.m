%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
image = rgb2gray(imread('peppers.png'));
[r,c]=size(image);
filter=[-1,-1,-1;-1,9,-1,;-1,-1,-1];
filteredImage = conv2(double(image), filter, 'same');
subplot 121
imshow(image,[]);
title('Original');
subplot 122
imshow(uint8(filteredImage),[]);
title('Lapalace Filtered');