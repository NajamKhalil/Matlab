%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
t=0:0.01:10;
for i=1:length(t)
   subplot 311
   plot(0:0.01:t(i),1+sin(0:0.01:t(i)),'r');
   xlim([0 max(t)]);
   subplot 312
   c_t=cos(100*(0:0.01:t(i)));
   plot(0:0.01:t(i),c_t,'g');
   xlim([0 max(t)]);
   subplot 313
   plot(0:0.01:t(i),c_t.*(1+sin(0:0.01:t(i))),'b');
   xlim([0 max(t)]);
   drawnow;
end