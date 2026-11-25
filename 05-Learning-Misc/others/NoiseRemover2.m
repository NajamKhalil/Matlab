%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
imageNoised=rgb2gray(imread('NoisyImage.jpg'));
[r,c]=size(imageNoised);
filter=ones(4,4)/16;
filteredImage=zeros(size(imageNoised));
for i=1:r-2
    for j=1:c-2
        af=imageNoised(i,j).*filter(1,1);
        bf=imageNoised(i,j+1).*filter(1,2);
        cf=imageNoised(i,j+2).*filter(1,3);
        
        df=imageNoised(i+1,j).*filter(2,1);
        ef=imageNoised(i+1,j+1).*filter(2,2);
        ff=imageNoised(i+1,j+2).*filter(2,3);
        
        gf=imageNoised(i+2,j).*filter(3,1);
        hf=imageNoised(i+2,j+1).*filter(3,2);
        kf=imageNoised(i+2,j+2).*filter(3,3);
        filteredImage(i,j)=af+bf+cf+df+ef+ff+gf+hf+kf;
    end
end

subplot 121
imshow(uint8(imageNoised),[]);
title('Noised');
subplot 122
imshow(uint8(filteredImage),[]);
title('Average Filtered without builtin');