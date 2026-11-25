%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
x=-4:1:4;
y=zeros(size(x));
for i=1:length(x)
   if(x(i)<-1)
       y(i)=x(i);
   elseif(x(i)>=-1 && x(i)<=2)
       y(i)=x(i).^2;
   elseif(x(i)>2)
       y(i)=1;
   end
end
plot(x,y);
title('OmerHootiya');
xlabel('x-->');
ylabel('y-->');