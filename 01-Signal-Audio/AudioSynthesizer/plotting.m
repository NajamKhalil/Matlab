%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
[y,Fs] = audioread('CocaColaTu.mp3');
left=y(:,1);
right=y(:,2);
fftR=fft(right);
[b,a] = butter(4,0.1);
RChange=filter(b,a,right);
fftRChange=fft(RChange);
%Plotting
subplot 221
plot(right);
title('Time Domain')
subplot 222
plot(1:length(fftR),fftshift(log(fftR)));
title('FFT')
subplot 223
plot(RChange);
title('filter Right')
subplot 224
plot(1:length(fftRChange),fftshift(log(fftRChange)));
title('FFT filter')
%Playing
player = audioplayer(RChange,Fs);
play(player);
pause(20);
stop(player);