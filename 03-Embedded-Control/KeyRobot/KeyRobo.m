%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all; %Initialize the java engine 
            import java.awt.*;
            import java.awt.event.*;
            %Create a Robot-object to do the key-pressing
            rob=Robot;
            %Commands for pressing keys:
            % If the text cursor isn't in the edit box allready, then it
            % needs to be placed there for ctrl+a to select the text.
            % Therefore, we make sure the cursor is in the edit box by
            % forcing a mouse button press:
            rob.mousePress(InputEvent.BUTTON1_MASK );
            rob.mouseRelease(InputEvent.BUTTON1_MASK );
            scan=-1;
            while(scan<0)
               scan=InputEvent.BUTTON1;
               fprintf('Scanning For key\n');
            end
            printf('key=')
            disp(scan);
%             rob.keyPress(KeyEvent.VK_A)
%             rob.keyRelease(KeyEvent.VK_A)
%             rob.keyPress(KeyEvent.VK_ENTER)
%             rob.keyRelease(KeyEvent.VK_ENTER)