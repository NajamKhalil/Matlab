%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
x=rand(36,36);
y=rand(36,36);
A=zeros(36,36);
[r,c]=size(A);
for i=1:r
    for j=1:c
        A(i,j)=(x(j)-x(i))-(y(j)-y(i));
    end
end
imshow(A,[])