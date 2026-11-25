%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
pc=pcread('facesView.ply');
newX=zeros(360,360);
newY=zeros(360,360);
newZ=zeros(360,360);
m=1;
 for i=1:400
     for j=1:800
        newX(i,j)=pc.Location(m,1);
        newY(i,j)=pc.Location(m,2);
        newZ(i,j)=pc.Location(m,3);
        m=m+1;
     end
 end
I = im2double(imread('peppers.png'));
J = flipud(imresize(I,size(newX)));
pc.Color=uint8(255*reshape(J,[],3));
pcshow(pc);
pcwrite(pc,'SaudHighColor','PLYFormat','ascii');
pcwrite(pc,'SaudHighColorbinary','PLYFormat','binary');