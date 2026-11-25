%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc; close; clear;
hsiimage=rgb2hsv(imread('peppers.png'));
hsiimage=im2double(hsiimage);
h=(2*pi).*hsiimage(:,:,1);
s=hsiimage(:,:,2);
i=hsiimage(:,:,3);
[r,c,k]=size(hsiimage);
R=size(h);
G=size(s);
B=size(i);
for x=1:r
    for y=1:c
        %RG sector
        if(h(x,y)>=0 && h(x,y)<((2*pi)/3)) %(H(x,y)>=0 && H(x,y)<120)
            h(x,y)=h(x,y);
            B(x,y)=(i(x,y))*(1-s(x,y));
            R(x,y)=(i(x,y))*(1+((s(x,y)*cos(h(x,y)))/cos((pi/3)-h(x,y))));
            G(x,y)=(3*i(x,y))-R(x,y)-B(x,y);
        elseif(h(x,y)>=(2*pi)/3) && h(x,y)<((4*pi)/3) %(H(x,y)>=120 && H(x,y)<240)
        %GB sector
            h(x,y)=(h(x,y)-((2*pi)/3));
            R(x,y)=(i(x,y))*(1-s(x,y));
            G(x,y)=(i(x,y))*(1+((s(x,y)*cos(h(x,y)))/cos((pi/3)-h(x,y))));
            B(x,y)=(3*i(x,y))-R(x,y)-G(x,y);
        elseif(h(x,y)>=((4*pi)/3) && h(x,y)<=((2*pi))) %(H(x,y)>=240 && H(x,y)<=360)
        %BR sector
            h(x,y)=(h(x,y)-((4*pi)/3));
            G(x,y)=(i(x,y))*(1-s(x,y));
            B(x,y)=(i(x,y))*(1+((s(x,y)*cos(h(x,y)))/cos((pi/3)-h(x,y))));
            R(x,y)=(3*i(x,y))-B(x,y)-G(x,y);
        end
    end
end
figure
RGBImage=cat(3, R,G,B);
subplot 121
imshow(hsiimage,[]);
title('Original HSI');
subplot 122
imshow(RGBImage,[]);
title('HSI 2 RGB');
