%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

close all;
clear all;
clc

image = imread('peppers.png');
image=im2double(image);

r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
num=0.5 * ((r-g)+(r-b));
den=sqrt((r-g).^2 +(r-b).*(g-b));
theta=acos(num./(den+eps));
H=theta;
H(b>g)=2*pi -H(b>g);

S = 1-(3./(r+g+b)).*min(min(r,g),b);
I = (r+g+b)/3;


hsi = cat(3,H,S,I);
imshow(hsi,[])

[row,colmn] = size(H);

for x=1:row
    for y=1:colmn
if H(x,y)>=0 && H(x,y)<2.0944
    R(x,y) = I(x,y).*(1+((S(x,y).*cos(H(x,y)))./(cos((pi/3)-H(x,y)))));
    B(x,y) = I(x,y).*(1-S(x,y));
    G(x,y) = (3*I(x,y))-(R(x,y)+B(x,y));
   
    

end

if H(x,y)>=2.0944 && H(x,y)<4.18879
        H(x,y) = H(x,y)-2.0944;
            G(x,y) = I(x,y).*(1+((S(x,y).*cos(H(x,y)))./(cos((pi/3)-H(x,y)))));
            R(x,y) = I(x,y).*(1-S(x,y));
            B(x,y) = (3*I(x,y))-(R(x,y)+G(x,y));
         
           
            
end

if H(x,y)>=4.18879 && H(x,y)<6.28319
            H(x,y)=H(x,y)-4.18879;
                B(x,y) = I(x,y).*(1+((S(x,y).*cos(H(x,y)))./(cos((pi/3)-H(x,y)))));
                G(x,y) = I(x,y).*(1-S(x,y));
                R(x,y) = (3*I(x,y))-(B(x,y)+G(x,y));
               
              
end

    end
end

figure
rgb = cat(3,R,G,B);
imshow(rgb,[])