%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clear all;
close all;
clc
 img = imread('tire.tif');
 h = [0 1 0;1 2 1;0 1 0];
 [rows, colmns] = size(img);
 padding = length(h);
 impad = zeros(rows+(padding-1), colmns+(padding-1));
 [padrows, padcolmn] = size(impad);
 imgpad = impad;
for i=1:rows
    for j=1:colmns
        imgpad(i+1,j+1) = img(i,j);
    end
end
subplot 211
imshow(imgpad,[])
imgpad1 = imgpad;
for i=1:rows
    for j=1:colmns
        
        imgpad1(i+1,j+1) = ...
        ((imgpad(i,j).*h(1,1))+...
        (imgpad(i,j+1).*h(1,2))+...
        (imgpad(i,j+2).*h(1,3))+...
        ...
        (imgpad(i+1,j).*h(2,1))+...
        (imgpad(i+1,j+1).*h(2,2))+...
        (imgpad(i+1,j+2).*h(2,3))+...
        ...
        (imgpad(i+2,j).*h(3,1))+...
        (imgpad(i+2,j+1).*h(3,2))+...
        (imgpad(i+2,j+2).*h(3,3)))/9;
    end
end
subplot 212
 imgpad1 = round(imgpad1)
 imshow(imgpad1,[])