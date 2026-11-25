%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

function [output] = CheckNN(i1,i2,i3,i4,i5)
load('NeuralNetworkEG.mat', 'NeuralNetworkEG')
output=NeuralNetworkEG([i1;i2;i3;0;i4;i5]);
end