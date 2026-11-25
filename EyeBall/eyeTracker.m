%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
camList = webcamlist;
cam = webcam(1);
fig=figure('name','fig');
hold on
while ishandle(fig)
    image=snapshot(cam);
    subplot 221
    imshow((image),[]);
    subplot 222
    histogram(image(:,:,1),'FaceColor',[1 0 0])
    subplot 223
    histogram(image(:,:,2),'FaceColor',[0 1 0])
    subplot 224
    histogram(image(:,:,3),'FaceColor',[0 0 1])
    drawnow
end
clc;clear all;close all;