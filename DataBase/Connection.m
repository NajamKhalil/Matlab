%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
delete(instrfind);
username = '';
password = '';
conn = database('NAJAMPC',username,password);
sqlquery='SELECT * FROM "Ghalib"."dbo".GalibList';
data=exec(conn,sqlquery);
