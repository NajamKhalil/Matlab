%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
t=0:0.01:10;
signal=sin(t).*sin(100*t);
subplot 211
plot(t,signal);
subplot 212
plot(t,abs(fftshift(fft(signal))));