%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clear all;close all;clc;
% Create the face detector object.
faceDetector = vision.CascadeObjectDetector();
% Create the webcam object.
cam = webcam();
% Capture one frame to get its size.
videoFrame = snapshot(cam);
frameSize = size(videoFrame);
fig=figure('name','Image');
videoFrame = snapshot(cam);
imageSize=size(videoFrame);
length=imageSize(2);
width=imageSize(1);
bboxFace=[0 0 0 0];
while ishandle(fig)
    if ~ishghandle(fig)
        break;
    end
    % Get the next frame.
    videoFrame = snapshot(cam);
    videoFrameGray = fliplr(imresize(rgb2gray(videoFrame),0.5));
    bboxFace = faceDetector.step(videoFrameGray);
    subplot 211
    imshow(videoFrameGray)
    len=size(bboxFace);
    if bboxFace~=0
        hold on
        rectangle('Position',[bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);
        hold off
        subplot 212
        plot(bboxFace(1)*2,bboxFace(2)*2,'or')
        axis([0 length 0 width])
    end
end
% Clean up.
clear cam;