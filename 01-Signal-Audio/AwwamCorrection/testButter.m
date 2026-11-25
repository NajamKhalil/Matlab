%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

figure
im=rgb2gray(imread('butter.png'));
n=2;%order
D0=70;
butterworthbpf(im,D0,100000,n)