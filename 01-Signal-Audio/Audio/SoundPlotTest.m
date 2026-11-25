%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
           changingValue=1;
           [y1,Fs1] = audioread('AyathraIshq.mp3');
           [y2,Fs2] = audioread('CocaColaTu.mp3');
           plot(y1(abs(round(changingValue))),y2(abs(round(changingValue))),'.');
           hold on
           xlim([-1 1]);
           ylim([-1 1]);
           for changingValue=1:84000
           plot(y1(abs(round(changingValue))),y2(abs(round(changingValue))),'.');
           hold on
           end