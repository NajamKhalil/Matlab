%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
h = animatedline;
t=0:0.01:100;
for i= 1:length(t)
    m_t = exp(-0.05*t(i))*sin(t(i));
    addpoints(h,t(i),m_t);
    drawnow limitrate
    pause(0.0001);
end
drawnow