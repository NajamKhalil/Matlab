%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

function [output,index] = minimumFunction(inputArray)
output=inputArray(1);
index=1;
for i=2:length(inputArray)
    if inputArray(i)<output
        output=inputArray(i);
        index=i;
    end
end

