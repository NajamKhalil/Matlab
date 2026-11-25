%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;
figure
img=rgb2gray(imread('butter.png'));

D = 60; %cutoff frequency
[x,y] = size(img);

for i=1:x
    for j=1:y
        dis = sqrt(((i-x/2)^2+(j-y/2)^2));
        if(dis<=D)
            out(i,j) = 1;
        else if(dis>D)
            out(i,j) = 0;
            end
        end
    end
end
hlp = max(max(out))-out;
fftim  = fft2(img);
out1 = ifft2(fftim.*fftshift(out));
out2 = ifft2(fftim.*fftshift(hlp));
subplot 221
imshow(img,[]);
title('Original Image');
subplot 222
imshow(abs(log(fftshift(fftim))),[]);
subplot 223
imshow(out1,[]);
subplot 224
imshow(out2,[]);