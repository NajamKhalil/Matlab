%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
image=imread('peppers.png');
title('ORIGINAL IMAGE')
image=im2double(image);
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%RGB to HSI
%Theta Formula
theta=acos((0.5 * ((r-g)+(r-b)))./(sqrt((r-g).^2 +(r-b).*(g-b))));
%H conditions
H=theta;
H(b>g)=2*pi -H(b>g);
H=H/(2*pi);% dividing my 360
%S formula
S=1-3.* (min(min(r,g),b))./(r+g+b);
%I Formula
I=(r+g+b)/3;
hsiimage=cat(3,H,S,I);
subplot 321
imshow(image,[]);
title('Original RGB');
subplot 322
imshow(hsiimage,[]);
title('RGB 2 HSI');
title('ORIGINAL HSI IMAGE')
H=hsiimage(:,:,1)*(2*pi);
S=hsiimage(:,:,2);
I=hsiimage(:,:,3);
[r,c,mat]=size(hsiimage);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%HSI to RGB
R=size(H);
G=size(S);
B=size(I);
for x=1:r
    for y=1:c
        %RG sector
        if(H(x,y)>=0 && H(x,y)<((2*pi)/3)) %(H(x,y)>=0 && H(x,y)<120)
            H(x,y)=H(x,y);
            B(x,y)=(I(x,y))*(1-S(x,y));
            R(x,y)=(I(x,y))*(1+((S(x,y)*cos(H(x,y)))/cos((pi/3)-H(x,y))));
            G(x,y)=(3*I(x,y))-R(x,y)-B(x,y);
        elseif(H(x,y)>=(2*pi)/3) && H(x,y)<((4*pi)/3) %(H(x,y)>=120 && H(x,y)<240)
        %GB sector
            H(x,y)=(H(x,y)-((2*pi)/3));
            R(x,y)=(I(x,y))*(1-S(x,y));
            G(x,y)=(I(x,y))*(1+((S(x,y)*cos(H(x,y)))/cos((pi/3)-H(x,y))));
            B(x,y)=(3*I(x,y))-R(x,y)-G(x,y);
        elseif(H(x,y)>=((4*pi)/3) && H(x,y)<=((2*pi))) %(H(x,y)>=240 && H(x,y)<=360)
        %BR sector
            H(x,y)=(H(x,y)-((4*pi)/3));
            G(x,y)=(I(x,y))*(1-S(x,y));
            B(x,y)=(I(x,y))*(1+((S(x,y)*cos(H(x,y)))/cos((pi/3)-H(x,y))));
            R(x,y)=(3*I(x,y))-B(x,y)-G(x,y);
        end
    end
    RGBImage=cat(3, R,G,B);
    subplot 323
    imshow(hsiimage,[]); drawnow
    title('Original HSI');
    subplot 324
    imshow(RGBImage,[]); drawnow
    title('HSI 2 RGB');
end
RGBImage=cat(3, R,G,B);
subplot 323
imshow(hsiimage,[]);
title('Original HSI');
subplot 324
imshow(RGBImage,[]);
title('HSI 2 RGB');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%RGB to CMY
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
c=(1-r);
m=(1-g);
y=(1-b);
CYMImage = cat(3, c,m,y);
subplot 325
imshow(image,[]);
title('Original RGB');
subplot 326
imshow(CYMImage,[]);
title('RGB 2 CMY');