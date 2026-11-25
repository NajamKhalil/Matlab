%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
Im=[1,2;4,3];
interIm=round(imresize(Im,2.5,'bilinear'));
subplot 121
imshow(Im,[])
title('Original');
subplot 122
imshow(interIm,[])
title('Interpolated');
fprintf('Value are given as:\n')
fprintf('Orginal\n');
disp(Im);
fprintf('Interpolated\n');
disp(interIm);