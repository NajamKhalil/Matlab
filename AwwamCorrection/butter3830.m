%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;
clear all;
close all;
im=rgb2gray(imread('butter.png'));
ft_img=fft2(im);
[r,c]=size(im);
%designing a butterworth Filter
%distance between one pixel from the other pixel 
orgin=ceil(length(filt)/2);
% d0=input('enter the cutoff frequency');
% n=input('enter the order of the filter');

d0=60;
n=2;
for i=1:r
    	for j=1:c
        	dist=sqrt((i-r/2)^2 + (j-c/2)^2);
        	h(i,j)= 1/(( 1 + (dist/d0)^(2*n)));
        
    	end
end

%filter  fourier transform
H=(h);
H1=fftshift(H);
G=ft_img.*H1;
filt_img=ifft2(G);
imshow(im);
title('Orginal Image');
figure;
subplot 121
meshz(abs(h));
title('Buthersworth Lowpass Filter in Spatial Domain');
subplot 122
imshow((filt_img),[]);
title('Filtered Image in Spatial Domain');

%high pass filter 
hp=max(max(h))-h;
HP=(hp);   
HP1=fftshift(HP);

figure;
Ghp=ft_img.*HP1;
filt_img1=ifft2(Ghp);

% highpass
subplot 121
meshz(abs(hp));
title('Buthersworth Highpass Filter in Spatial Domain');
subplot 122
imshow((filt_img1),[])
title('Highpass filtered out Image in Spatial Domain');