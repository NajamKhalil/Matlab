%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
v='video.mp4';
videoReader = VideoReader(v);
fps = get(videoReader, 'FrameRate');
disp(fps); % the fps is correct: it's the same declared in the video file properties
currAxes = axes;
while hasFrame(videoReader)
  vidFrame = readFrame(videoReader);
  image(vidFrame, 'Parent', currAxes);
  currAxes.Visible = 'off';
  pause(1/videoReader.FrameRate);
end