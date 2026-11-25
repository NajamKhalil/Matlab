%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
res1=180;
res2=360;
azi=zeros(res1*res2,1);
ele=zeros(res1*res2,1);
dis=50*ones(res1*res2,1);
a=1;
for i=0:1:res1
    for j=0:1:res2
        ele(a,1)=i;
        azi(a,1)=j;
        a=a+1;
    end
end
x=zeros(res1*res2,1);
y=zeros(res1*res2,1);
z=zeros(res1*res2,1);
a=1;
for i=0:res1-1
    for j=0:res2-1
        x(a,1)=dis(a,1)*cos((3.1415/180)*(ele(a,1)))*cos((3.1415/180)*(azi(a,1)));
        y(a,1)=dis(a,1)*cos((3.1415/180)*(ele(a,1)))*sin((3.1415/180)*(azi(a,1)));
        z(a,1)=dis(a,1)*sin((3.1415/180)*(ele(a,1)));
        %fprintf('v  %f  %f  %f \n',x(a,1),y(a,1),z(a,1));
        a=a+1;
    end
end
 clear azi
 clear ele
 clear dis
 xyz=zeros(length(x),3);
 for i=1:length(x)
    xyz(i,1)=x(i);
    xyz(i,2)=y(i);
    xyz(i,3)=z(i);
 end
 newX=zeros(360,360);
 newY=zeros(360,360);
 newZ=zeros(360,360);
 m=1;
 for i=1:res1
     for j=1:res2
        newX(i,j)=x(m,1);
        newY(i,j)=y(m,1);
        newZ(i,j)=z(m,1);
        m=m+1;
     end
 end
 ptCloud = pointCloud(xyz);
 pcwrite(ptCloud,'HillOut','PLYFormat','binary');
I = im2double(imread('peppers.png'));
J = flipud(imresize(I,size(newX)));
pcshow([newX(:),newZ(:),newY(:)],reshape(J,[],3));