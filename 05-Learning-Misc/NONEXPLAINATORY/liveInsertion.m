%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
A=round(100*rand(1,250));
for ii=2:length(A)
    jj = ii;
    while (jj > 1 && A(jj-1) > A(jj))
        [A(jj),A(jj-1)] = deal(A(jj-1),A(jj));
        jj = jj - 1;
        plot(A); drawnow
    end
end