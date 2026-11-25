%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

function [resultFlag] = palanFinder(String)
Characters =convertStringsToChars(String);
len=length(Characters);
resultFlag=false;
if(mod(len,2)~=0)
    for i=1:floor(len/2)
       if(Characters(i)==Characters(len+1-i))
           resultFlag=true;
       else
           resultFlag=false;
           break;
       end
    end
else
    resultFlag=false;
end
end