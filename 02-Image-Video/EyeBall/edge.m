%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
of = opticalFlowHS;
of.Smoothness = 0.1;
se = strel('line',11,90);
camList = webcamlist;
cam = webcam(1);
fig=figure('name','fig');
hold on
while ishandle(fig)
    image=snapshot(cam);
    binary=imbinarize(rgb2gray(image));
    di=imdilate(binary,se)-imerode(binary,se);
    subplot 211
    imshow((image),[]);
    subplot 212
    imshow((di),[]);
    drawnow
end
clc;clear all;close all;