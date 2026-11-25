%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;    
%Najam Hint: Incase it doesnot works or error like authentication occur go to this link and enable less sucure app 
%https://www.google.com/settings/security/lesssecureapps?rfn=27&rfnc=1&asae=2&anexp=lbe-R1_C
email='najamkhalil123@gmail.com';
password='najam1998';
setpref('Internet','E_mail',email);
setpref('Internet','SMTP_Username',email);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');
% Send the email.  Note that the first input is the address you are sending the email to
sendmail('chumikaka13@gmail.com','Matlab Emailing','EmailAttachment','Photo.png')