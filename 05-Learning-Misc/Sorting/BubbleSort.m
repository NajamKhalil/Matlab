%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
tic
data=rand(1,100);
fprintf("DataArray is =");
disp(data);
for j=1:length(data)-1
for i=1:length(data)-1
    if(data(i)>data(i+1))
        a=data(i);
        data(i)=data(i+1);
        data(i+1)=a;
        plot(data); drawnow
    end
end
end
fprintf("BubbleSortedArray is =");
disp(data);
toc