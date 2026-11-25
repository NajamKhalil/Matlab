%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;
clear all;
close all;
%load NetworkInput.mat
%load NetworkTarget.mat
load NeuralNetworkEG.mat
TempC=input('Enter TempC=');
Humidity=input('Enter Humidity=');
Time=input('Enter Time=');
OutSideTemp=input('Enter OutSideTemp=');
PowerConsumption=input('Enter PowerConsumption=');
NetworkAns=NeuralNetworkEG([TempC;Humidity;Time;0;OutSideTemp;PowerConsumption]);
if(round(NetworkAns(1,1))==0 && round(NetworkAns(2,1))==1)
    fprintf('The System is currently Using Electricity\n');
    fprintf('%d Cost\n',12*PowerConsumption);
elseif(round(NetworkAns(1,1))==1 && round(NetworkAns(2,1))==0)
    fprintf('The System is currently Using Gas\n');
    fprintf('%d Cost\n',3*PowerConsumption);
end