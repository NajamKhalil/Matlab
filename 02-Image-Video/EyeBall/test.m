%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
of = opticalFlowHS;
of.Smoothness = 0.1;
of = opticalFlowHS;
of.Smoothness = 0.1;
camList = webcamlist;
cam = webcam(1);
fig=figure('name','fig');
hold on
while ishandle(fig)
i=snapshot(cam);
subplot(2,2,1)
imshow(i)
title('original image');
iycbcr=rgb2ycbcr(i);
iycbcr = im2double(iycbcr);
title('YCBCR space');
y=iycbcr(:,:,1);
cb=iycbcr(:,:,2);
cr=iycbcr(:,:,3);
ccb=cb.^2;
title('CB^2');
ccr=(1-cr).^2;
title('(1-CR)^2');
cbcr=ccb./cr;
title('CB/CR');
igray=rgb2gray(i);
title('Gray space');
g=1./3;
l=g*ccb;
m=g*ccr;
n=g*cbcr;
eyemapchr=l+m+n;
title('Chrom Eyemap');
J=histeq(eyemapchr);
title('Equalized image');
SE=strel('disk',15,8);
o=imdilate(igray,SE);
p=1+imerode(igray,SE);
eyemaplum=o./p;
title('Lum Eyemap');
%the eye region
cc=and(J,eyemaplum);
title('AND of Lum&Chrom');
subplot 222
    flowField = estimateFlow(of,cc);
    plot(flowField,...
        'DecimationFactor',[10 10],...
        'ScaleFactor',50);    
    title('Optical Flow')
end
clc;clear all;close all;