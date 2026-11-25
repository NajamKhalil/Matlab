%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
x=round(100*rand(1,50));
sorted = false;
n = length(x);
while ~sorted
    sorted = true;
    for ii=1:2:n-1
        if x(ii) > x(ii+1)
            [x(ii), x(ii+1)] = deal(x(ii+1), x(ii));
            sorted = false;
            plot(x); drawnow
        end
    end
    for ii=2:2:n-1
        if x(ii) > x(ii+1)
            [x(ii), x(ii+1)] = deal(x(ii+1), x(ii));
            sorted = false;
            plot(x); drawnow
        end
    end
end