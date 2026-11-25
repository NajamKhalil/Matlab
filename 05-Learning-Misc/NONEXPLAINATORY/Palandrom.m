%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
String="maham";
len=length(String{1});
resultFlag=false;
if(mod(len,2)~=0)
    for i=1:floor(len/2)
       if(String{1}(i)==String{1}(len+1-i))
           resultFlag=true;
       else
           resultFlag=false;
           break;
       end
    end
else
    fprintf("The String doesn't contain Odd Characters\n");
end
fprintf("-------------------------------------\n");
fprintf("The result is = ");
disp(resultFlag);
fprintf("-------------------------------------\n");