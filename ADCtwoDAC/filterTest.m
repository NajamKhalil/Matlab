%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
[b,a] = butter(3,0.01,'low');
freqz(b,a)
dataIn = randn(1000,1);
dataOut = filter(b,a,dataIn);