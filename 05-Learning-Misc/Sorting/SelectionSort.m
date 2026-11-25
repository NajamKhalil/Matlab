%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
tic
data=rand(1,1000);
fprintf("DataArray is =");
disp(data);
for i=1:length(data)
    a=data(i);
    [data(i),index]=minimumFunction(data(i:length(data)));
    data(index+i-1)=a;
    plot(data); drawnow
end
fprintf("SelectionSortedArray is =");
disp(data);
toc