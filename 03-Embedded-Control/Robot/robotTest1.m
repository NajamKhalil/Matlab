%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
import java.awt.Robot;
import java.awt.Event;
robo=Robot;
while (get(gcf,'CurrentCharacter')=='r')
    robo.keyPress(java.awt.event.KeyEvent.VK_A);
    robo.keyRelease(java.awt.event.KeyEvent.VK_A);
end