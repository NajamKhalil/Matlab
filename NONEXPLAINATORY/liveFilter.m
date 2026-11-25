%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
Original=imread('peppers.png');
subplot 121
imshow(Original);
title('Original');
[r,c,colors]=size(Original);
flippedImage=uint8((Original));
for i=1:r
    for j=1:c
        flippedImage(r-i+1,j,1)=Original(i,j,1);
        flippedImage(r-i+1,j,2)=Original(i,j,2);
        flippedImage(r-i+1,j,3)=Original(i,j,3);
    end
    subplot 122
    imshow(flippedImage,[]); drawnow
end
subplot 122
imshow(flippedImage,[]);
title('Flipped');
flippedRGBName=input('enter the name along with extension for flippedImage=','s');
imwrite(flippedImage,flippedRGBName);