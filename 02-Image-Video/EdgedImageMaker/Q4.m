%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
image = rgb2gray(imread('Bilal.jpeg'));
filter=fspecial('gaussian',10);
image =image; %Gaussain
[r,c]=size(image);
filter=[0,-1,0;-1,8,-1,;0,-1,0];
filteredImage = conv2(double(image), filter, 'same');
filteredImage=max(max(filteredImage))-filteredImage;
se = strel('line',8,1000);
eroded=imdilate(imbinarize(filteredImage),se);
subplot 121
imshow(image,[]);
title('Original');
subplot 122
imshow(uint8(filteredImage),[]);
title('Lapalace Filtered');