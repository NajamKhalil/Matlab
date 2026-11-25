%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
%Initializatrion
N=5000;
NormalDistribution= randn([1 N],'distributed');
UniformDistribution= rand(1,N);
%Plotting
figure('name','PartA')
subplot 211
histogram(NormalDistribution);
title('NormalDistribution');
subplot 212
histogram(UniformDistribution);
title('UniformDistribution');