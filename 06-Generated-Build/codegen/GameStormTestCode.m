%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
bench="abcdefghijklmnopqrstuvwxyz0123456789";
String="n*a!j,m";
fprintf("-------------------\n");
fprintf("OriginalString is = %s\n",String);
for i=1:length(String{1})
    for j=1:length(bench{1})
        if(bench{1}(j)==String{1}(i))
           Array{1}(i)=String{1}(i);
           String{1}(i)='.';
        end
    end
end
fprintf("-------------------\n");
fprintf("String is = %s\n",String);
fprintf("-------------------\n");
for i=1:length(String{1})
    if(String{1}(i)=='.')
        String{1}(i)=Array{1}(length(String{1})+1-i);
    end
end
fprintf("Replaced is = %s\n",String);
fprintf("-------------------\n");