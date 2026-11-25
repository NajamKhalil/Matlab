%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
knownCreditCardLen=8.5;     %in CM
image=imread('TestingPhoto.jpg');
fig=figure('name','LengthFinding');
imshow(image);

CreditCardobj = datacursormode(fig);
datacursormode on;
set(CreditCardobj,'DisplayStyle','datatip',...
    'SnapToDataVertex','off','Enable','on')
%---------------Both Below Pause are for Credit Card Cursors
fprintf('Please Select Cursor 1 for CreditCard then Press Enter Here\n');
pause
CreditCardobj1CursorInfo = getCursorInfo(CreditCardobj);
CPosition1=CreditCardobj1CursorInfo.Position;
fprintf('Position of Cursor 1 for CreditCard =%d\n\n',CPosition1);
fprintf('---------------------------------------------------\n');

fprintf('Please Select Cursor 2 for CreditCard then Press Enter Here\n');
pause
CreditCardobj2CursorInfo = getCursorInfo(CreditCardobj);
CPosition2=CreditCardobj2CursorInfo.Position;
fprintf('Position  of Cursor 2 for CreditCard =%d\n\n',CPosition2);
fprintf('---------------------------------------------------\n');

%---------------Both Below Pause are for Feet Cursors
fprintf('Please Select Cursor 1 for Feet then Press Enter Here\n');
pause
Feetobj1CursorInfo = getCursorInfo(CreditCardobj);
FPosition1=Feetobj1CursorInfo.Position;
fprintf('Position  of Cursor 1 for Feet =%d\n\n',FPosition1);
fprintf('---------------------------------------------------\n');

fprintf('Please Select Cursor 2 for Feet then Press Enter Here\n');
pause
Feetobj2CursorInfo = getCursorInfo(CreditCardobj);
FPosition2=Feetobj2CursorInfo.Position;
fprintf('Position  of Cursor 1 for Feet =%d\n\n',FPosition2);
fprintf('---------------------------------------------------\n');

%Credit Pixel Computing
CreditCardLengthInPixels=sqrt(((CPosition1(1)-CPosition2(1))^2)+(CPosition1(2)-CPosition2(2))^2);
%Feet Pixel Computing
FeetLengthInPixels=sqrt(((FPosition1(1)-FPosition2(1))^2)+(FPosition1(2)-FPosition2(2))^2);
%DistanceInPixelPrinting
fprintf('CreditCardLengthInPixels=%f\n',CreditCardLengthInPixels);
fprintf('FeetLengthInPixels=%f\n',FeetLengthInPixels);
fprintf('---------------------------------------------------\n');

%FinalComputedDistance
FeetDistanceInCM=(FeetLengthInPixels/CreditCardLengthInPixels)*knownCreditCardLen;
fprintf('FeetDistanceInCM=%f\n',FeetDistanceInCM);