%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;

myVoice = audiorecorder;

disp('Start speaking.');
recordblocking(myVoice, 5);
disp('End of recording.');

% play(myVoice)
audioDataTimeDomain=getaudiodata(myVoice);
subplot 211
plot(audioDataTimeDomain);
title('Data In Time Domain');


audioDataFreqDomain=fft(audioDataTimeDomain);
subplot 212
f=0:length(audioDataFreqDomain)-1;
plot(f,audioDataFreqDomain);
title('Data In Freq Domain');
%convertion

toneChanged=ifft(audioDataFreqDomain);

Fs       = 8000;
hplayer = audioplayer(toneChanged, Fs);
play(hplayer)