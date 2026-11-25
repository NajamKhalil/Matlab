%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
imageNoised=rgb2gray(imread('NoisyImage.jpg'));

[r,c]=size(imageNoised);
filter=zeros(9,1);
filteredImage=zeros(size(imageNoised));
for i=1:r-2
    for j=1:c-2
        filter(1,1)=imageNoised(i,j);
        filter(2,1)=imageNoised(i,j+1);
        filter(3,1)=imageNoised(i,j+2);
        
        filter(4,1)=imageNoised(i+1,j);
        filter(5,1)=imageNoised(i+1,j+1);
        filter(6,1)=imageNoised(i+1,j+2);
        
        filter(7,1)=imageNoised(i+2,j);
        filter(8,1)=imageNoised(i+2,j+1);
        filter(9,1)=imageNoised(i+2,j+2);
        
        filteredImage(i,j)=median(filter);
    end
end

subplot 121
imshow(uint8(imageNoised),[]);
title('Noised');
subplot 122
imshow(uint8(filteredImage),[]);
title(' Weighted Average Filtered');