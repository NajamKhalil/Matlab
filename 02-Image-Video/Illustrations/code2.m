%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
I = rgb2gray(imread('testImage.jpg'));
radius = 0.9;
J1 = fspecial('laplacian', radius);
K1 = imfilter(I,J1,'replicate');
subplot(131);
imshow(I,[]);
title('original');
subplot(132);
imshow(K1,[]);
[r,c]=size(I);
bin=zeros(size(I));
m=min(min(K1));
for x=1:r
   for y=1:c
    if(K1(x,y)>=1)
        bin(x,y)=0;
    else
        bin(x,y)=1;
    end
   end
end
subplot(133);
imshow(bin,[]);