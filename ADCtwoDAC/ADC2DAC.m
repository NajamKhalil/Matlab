%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
t=0:0.01:100;
s=cos(1*t)+cos(2*t)+cos(3*t)+cos(4*t);
tri=sawtooth(10*t,1/2);
comp=zeros(size(tri));
for i=1:length(t)
   if(tri(1,i)<=s(1,i)) 
      comp(1,i)=1;
   else
      comp(1,i)=0;
   end
end
[b,a] = butter(3,0.01,'low');
filtered = filter(b,a,comp);
subplot 221
plot(t,s);
title('Signal')
subplot 222
plot(t,tri);
title('Triangle')
subplot 223
plot(t,comp);
title('Comparator')
subplot 224
plot(t,filtered);
title('AfterFilter')