%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
A=round(100*rand(1,100));
n = length(A);
while n ~= 0
    nn = 0;
    for ii = 1:n-1
        if A(ii) > A(ii+1)
            [A(ii+1),A(ii)] = deal(A(ii), A(ii+1));
            nn = ii;
            plot(A); drawnow
        end
    end
    n = nn;
end