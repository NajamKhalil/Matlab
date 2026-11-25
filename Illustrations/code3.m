%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
I = (imread('peppers.png'));
subplot 221
imshow(I,[]);
subplot 222
histogram(I(:,:,1),'FaceColor',[1 0 0])
title('Red');
subplot 223
histogram(I(:,:,2),'FaceColor',[0 1 0])
title('Green');
subplot 224
histogram(I(:,:,3),'FaceColor',[0 0 1])
title('Blue');
figure
subplot 131
imshow(I(:,:,1),[])
title('Red')
subplot 132
imshow(I(:,:,2),[])
title('Blue')
subplot 133
imshow(I(:,:,3),[])
title('Green')
figure
Eq=zeros(size(I));
Eq(:,:,1)=histeq(I(:,:,1));
Eq(:,:,2)=histeq(I(:,:,2));
Eq(:,:,3)=histeq(I(:,:,3));
subplot 121
imshow(I,[]);
title('Original');
subplot 122
imshow(Eq,[]);
title('HistEq');
figure
subplot 221
imshow(Eq,[]);
subplot 222
histogram(Eq(:,:,1),'FaceColor',[1 0 0])
title('Red');
subplot 223
histogram(Eq(:,:,2),'FaceColor',[0 1 0])
title('Green');
subplot 224
histogram(Eq(:,:,3),'FaceColor',[0 0 1])