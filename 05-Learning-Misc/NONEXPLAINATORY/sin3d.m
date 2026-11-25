%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
t=0:0.01:10;
theta=2*pi*t;
x1=((3/4)*sin(theta));
x2=((1/4)*sin(3*theta));
x=x1+x2;
y1=((3/4)*cos(theta));
y2=((1/4)*cos(3*theta));
y=y1+y2;
hold on
for i=1:length(theta);
plot3(x1(1:i),y1(1:i),theta(1:i),'b');drawnow
plot3(x(1:i),y(1:i),theta(1:i),'.r');drawnow
end
xlabel('x->');
ylabel('y->');
zlabel('theta->');