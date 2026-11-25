%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
number=input('Enter the number whos prime factors you want to know=');
fprintf('Numbers Prime Factors are:\n');
iter=1;
for i=2:number-1
   if mod(number,i)==0
       fprintf('%d\n',i);
       list(iter)=i;
       iter=iter+1;
   end
end
numberAgain=number;
i=1;
pi=1;
powerlist=zeros(number,1);
while(numberAgain==1)
    modCheck=mod(number,list(i));
   if(modCheck==0)
       numberAgain=numberAgain/list(i);
       powerlist(pi,1)=powerlist(pi,1)+1;
   else
       pi=pi+1;
       i=i+1;
   end
end
powerlist
