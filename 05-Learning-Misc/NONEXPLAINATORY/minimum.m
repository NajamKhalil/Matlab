%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc; clear all;close all;
M=1;
b=10;
k=20;
num1=[1];
den1=[M b k];
sys1=tf(num1,den1);
subplot 211
step(sys1);
title('Before');
kd=1:50;
kp=1:350;
ki=1:300;
%KP
for i=1:max(kp)
            num2=[min(kd) kp(i) min(ki)];
            den2=[1 0];
            sys2=tf(num2,den2);
            sys3=series(sys1,sys2);
            Ufeed=feedback(sys3,1,-1);
            subplot 212
            step(Ufeed); drawnow
end
%KI
for i=1:max(ki)
            num2=[min(kd) max(kp) ki(i)];
            den2=[1 0];
            sys2=tf(num2,den2);
            sys3=series(sys1,sys2);
            Ufeed=feedback(sys3,1,-1);
            subplot 212
            step(Ufeed); drawnow
end
%KD
for i=1:max(kd)
            num2=[kd(i) max(kp) max(ki)];
            den2=[1 0];
            sys2=tf(num2,den2);
            sys3=series(sys1,sys2);
            Ufeed=feedback(sys3,1,-1);
            subplot 212
            step(Ufeed); drawnow
end