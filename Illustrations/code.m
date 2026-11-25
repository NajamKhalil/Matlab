%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
im=rgb2gray(imread('testImage.jpg'));
[r,c]=size(im);
bin=zeros(size(im));
for x=1:r
   for y=1:c
    if(im(x,y)>125)
        bin(x,y)=1;
    else
        bin(x,y)=0;
    end
   end
end
imshow(bin,[])