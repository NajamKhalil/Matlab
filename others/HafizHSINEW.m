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
num = 0.5*((r-g)+(r-b));
den = sqrt((r-g).^2 +(r-b).*(g-b));
theta=acos(num./(den));


if b>g
    H = 360-theta;
    
else
    H = theta;
    
   
end


S = 1-(3./(r+g+b)).*min(min(r,g),b);
I = (1/3).*(r+g+b);


hsi = cat(3,H,S,I);
 imshow(hsi)


[row,colmn] = size(H);


for x=1:row
    for y=1:colmn
if H(x,y)>=0 & H(x,y)<120
    R(x,y) = I(x,y).*(1+((S(x,y).*cos(H(x,y)))./(cos(60-H(x,y)))));
    B(x,y) = I(x,y).*(1-S(x,y));
    G(x,y) = (3*I(x,y))-(R(x,y)+B(x,y));
   
    


end


if H(x,y)>=120 & H(x,y)<240
        H(x,y) = H(x,y)-120
            G(x,y) = I(x,y).*(1+((S(x,y).*cos(H(x,y)))./(cos(60-H(x,y)))));
            R(x,y) = I(x,y).*(1-S(x,y));
            B(x,y) = (3*I(x,y))-(R(x,y)+G(x,y));
         
           
            
end


if H(x,y)>=120 & H(x,y)<240
            H(x,y)=H(x,y)-120
                G(x,y) = I(x,y).*(1+((S(x,y).*cos(H(x,y)))./(cos(60-H(x,y)))));
                R(x,y) = I(x,y).*(1-S(x,y));
                B(x,y) = (3*I(x,y))-(R(x,y)+G(x,y));
               
              
end


    end
end


figure
rgb = cat(3,R,G,B);
imshow(rgb)
 














