%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
numFaces = 1000;
[x,y,z] = sphere(numFaces);
I = im2double(imread('visionteam1.jpg'));
J = flipud(imresize(I,size(x)));
pcshow([x(:),y(:),z(:)],reshape(J,[],3));
pcwrite([x(:),y(:),z(:)],reshape(J,[],3));