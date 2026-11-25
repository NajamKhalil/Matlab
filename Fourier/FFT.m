%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
im=(imread('tire.tif'));
Fim=fft((im));

subplot 221
imshow(im,[]);
title('Image');

subplot 222
imshow(Fim,[]);
title('FImage');


subplot 223
MUL=Fim*1;
imshow(MUL,[]);
title('FImage * MUL');

subplot 224
imshow(ifft(MUL),[]);
title('im * MUL');