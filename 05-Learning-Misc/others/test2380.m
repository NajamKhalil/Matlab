%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;
clear all;
close all;

im=imread('Lenna.png');
im=im2double(im);
hsi=rgb2hsv(im);
h=(2*pi).*hsi(:,:,1);
s=hsi(:,:,2);
i=hsi(:,:,3);
[r1,c]=size(h);
r=zeros(r1,c);
g=zeros(r1,c);
b=zeros(r1,c);
for m=1:r1
    for n=1:c
        if (0<=h(m,n) && h(m,n)<((2*pi)/3)) 
            %RG Sector
            h1=h(m,n);
            s1=s(m,n);
            ii=i(m,n);
            b(m,n)=ii*(1-s1);
            num=s1*cos(h1);
            denum=cos((pi/3)-h1);
            r(m,n)=ii*(1+(num/denum));
            g(m,n)=3*ii-(r(m,n)+b(m,n));
        elseif (((2*pi)/3)<=h(m,n) && h(m,n)<((4*pi)/3))
            %GB Sector
            h1=(h(m,n)-((pi/3)/3));
            s1=s(m,n);
            ii=i(m,n);
            r(m,n)=ii*(1-s1);
            num=s1*cos(h1);
            denum=cos((pi/3)-h1);
            g(m,n)=ii*(1+(num/denum));
            b(m,n)=3*ii-(r(m,n)+g(m,n));
        elseif (((4*pi)/3)<=h(m,n) && h(m,n)<=(2*pi))
            %BR Sector
            h1=(h(m,n)-((4*pi)/3));
            s1=s(m,n);
            ii=i(m,n);
            g(m,n)=ii*(1-s1);
            num=s1*cos(h1);
            denum=cos((pi/3)-h1);
            b(m,n)=ii*(1+(num/denum));
            r(m,n)=3*ii-(g(m,n)+b(m,n));
        end
    end
end
% rgb1=hsv2rgb(hsi);
% R=rgb1(:,:,1);
% G=rgb1(:,:,2);
% B=rgb1(:,:,3);

% r=r./(2*pi);
% g=g./(2*pi);
% b=b./(2*pi);

rgb=cat(3,(r),(g),(b));
imshow(rgb,[]);
