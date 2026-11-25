%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
im=rgb2gray(imread('MyProject.png'));
level=graythresh(im);
imbinary=imbinarize(im,level);
se = strel('line',8,1000);
eroded=imerode(imbinary,se);
edgesImage=imbinary-eroded;
blackEdged=max(max(edgesImage))-edgesImage;
subplot 121
imshow(im,[]);
subplot 122
imshow(blackEdged,[]);
imwrite(blackEdged,'EdgedImage.png');