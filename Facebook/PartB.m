%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
%Initializatrion
N=5000;
%First Section
x= rand(1,N);
y= rand(1,N);
figure('name','first Section');
subplot 211
plot(x,y,'.');
title('Part_b simple Plot');
subplot 212
scatter(x,y,'.');
title('Part_b by Scatter');
%Second Section
a=sqrt(3);
lim1 = -a;
lim2 = a;
u = (lim2-lim1).*rand(1,N) + lim1;
v = (lim2-lim1).*rand(1,N) + lim1;
figure('name','second Section');
subplot 211
scatter(u,v,'.');
title('Part_b u vs v');
subplot 212
scatter(u,x,'.');
title('Part_b bu x vs u');