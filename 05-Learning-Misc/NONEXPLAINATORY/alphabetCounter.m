%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
StringA="najamkhalil123";
StringB="123khalilnajam";
bench="abcdefghijklmnopqrstuvwxyz0123456789";
CounterA=zeros(size(bench{1}));
CounterB=zeros(size(bench{1}));
resultFlag=false;
for i=1:length(bench{1})
   for j=1:length(StringA{1})
       if(bench{1}(i)==StringA{1}(j))
           CounterA(i)=CounterA(i)+1;
       end
   end
end
for i=1:length(bench{1})
   for j=1:length(StringB{1})
       if(bench{1}(i)==StringB{1}(j))
           CounterB(i)=CounterB(i)+1;
       end
   end
end
for i=1:length(bench{1})
   if(CounterA(i)==CounterB(i))
           resultFlag=true;
   else
           resultFlag=false;
           break;
   end
end
fprintf("__________________________________________________\n");
fprintf("StringA = %s | StringB = %s \n",StringA,StringB);
fprintf("__________________________________________________\n");
fprintf("Results\n");
fprintf("__________________________________________________\n");
for i=1:length(bench{1})
    fprintf("Character %c | CounterA = %d | in CounterB = %d \n",bench{1}(i),CounterA(i),CounterB(i));
end
fprintf("__________________________________________________\n");
fprintf("The result is = ");
disp(resultFlag);
fprintf("__________________________________________________\n");