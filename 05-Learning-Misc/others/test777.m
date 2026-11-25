%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc; close; clear;
img=rgb2hsv(imread('peppers.png'));
img=im2double(img);
h=(2*pi).*img(:,:,1);
s=img(:,:,2);
I=img(:,:,3);
[r,c,k]=size(img);
R=zeros(r,c);
G=zeros(r,c);
B=zeros(r,c);
r1=zeros(r,c);
 for i=1:r
     for j=1:c    
if 0<=h(i,j) && h(i,j)<((2*pi)/3)
   B(i,j)=I(i,j).*(1-s(i,j));
   r1(i,j)=((s(i,j).*cos(h(i,j)))./(cos((pi/3)-h(i,j))));
   R(i,j)=I(i,j).*(1+r1(i,j));
   G(i,j)=3.*I(i,j)-(R(i,j)+B(i,j));
elseif ((2*pi)/3)<=h(i,j) && h(i,j)<((2*pi)/3)
   h(i,j)=h(i,j)-120;
   R(i,j)=I(i,j).*(1-s(i,j));
   r1(i,j)=s(i,j).*(cos(h(i,j))/(cos((pi/3)-h(i,j))));
   G(i,j)=I(i,j)*(1+r1(i,j));
   B(i,j)=3*I(i,j)-(R(i,j)+G(i,j));
elseif ((2*pi)/3)<=h(i,j) && h(i,j)<2*pi
   h(i,j)=h(i,j)-240;
   G(i,j)=I(i,j).*(1-s(i,j));
   r1(i,j)=s(i,j).*(cos(h(i,j))/(cos((pi/3)-h(i,j))));
   B(i,j)=I(i,j).*(1+r1(i,j));
   R(i,j)=3.*I(i,j)-(B(i,j)+G(i,j));
end
     end
 end
 
rgb=cat(3,R,G,B);
subplot 221
imshow(R,[])
% title('HSI Image')
subplot 222
imshow(G,[])
% title('RGB Image')
subplot 223
imshow(B,[])
subplot 224
imshow(rgb,[])