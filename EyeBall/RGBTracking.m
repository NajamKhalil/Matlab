%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
%% Set up optical flow
of = opticalFlowHS;
of.Smoothness = 0.1;
camList = webcamlist;
cam = webcam(1);
fig=figure('name','fig');
hold on
while ishandle(fig)
    image=snapshot(cam);
    subplot 211
    imshow((image),[]);
    subplot 212
    flowField = estimateFlow(of,imbinarize(rgb2gray(image)));
    plot(flowField,...
        'DecimationFactor',[10 10],...
        'ScaleFactor',50);    
    title('Optical Flow')
    drawnow
end
clc;clear all;close all;