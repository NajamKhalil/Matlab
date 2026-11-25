%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
learning=1000;
diceHead=zeros(learning,1);
diceTail=zeros(learning,1);
diceResult=zeros(learning,1);
HeadProbability=0;
TailProbability=0;
for i=1:learning
    diceResult(i,1)=round((10*(1+rand(1,1)))/10,0);
    if diceResult(i,1)==1
        HeadProbability=HeadProbability+1;
    elseif diceResult(i,1)==2
        TailProbability=TailProbability+1;
    end
end
fprintf('HeadProbability=%f\n',(HeadProbability/learning)*100);
fprintf('TailProbability=%f\n',(TailProbability/learning)*100);