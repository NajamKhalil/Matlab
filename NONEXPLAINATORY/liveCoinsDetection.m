%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
image=imread('tire.tif');
imageNoised = imnoise(image,'salt & pepper',0.02);
[r,c]=size(imageNoised);
filter=zeros(9,1);
filteredImage=zeros(size(imageNoised));
subplot 131
imshow(image,[]); drawnow
title('Original');
subplot 132
imshow(uint8(imageNoised),[]); drawnow
title('Noised');
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
subplot 133
imshow(uint8(filteredImage),[]); drawnow
title(' Weighted Average Filtered');
end