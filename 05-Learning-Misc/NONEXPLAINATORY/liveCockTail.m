%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
A=round(100*rand(1,250));
beginIdx = 0;
endIdx = length(A)-1;
swapped = false;
while ~swapped
    swapped = false;
    % increases `beginIdx` because the elements before `beginIdx` are in correct order
    beginIdx = beginIdx + 1;
    for ii= beginIdx:endIdx
        if A(ii) > A(ii + 1)
            [A(ii+1), A(ii)] = deal(A(ii), A(ii+1));
            swapped = true;
            plot(A); drawnow
        end
    end
    if ~swapped
        break;
    end
    swapped = false;
    % decreases `endIdx` because the elements after `endIdx` are in correct order
    endIdx = endIdx - 1;
    for ii= endIdx:-1:beginIdx
        if A(ii) > A(ii + 1)
            [A(ii+1), A(ii)] = deal(A(ii), A(ii+1));
            swapped = true;
            plot(A); drawnow
        end
    end
    swapped = false;
end