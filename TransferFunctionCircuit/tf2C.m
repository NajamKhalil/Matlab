%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
syms t s
input=sin(t);
output=abs(sin(t));
inputL=laplace(input);
outputL=laplace(output);
tf=outputL/inputL