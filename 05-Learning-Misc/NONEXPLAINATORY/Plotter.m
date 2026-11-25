%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

function [] = Plotter()
t=1:0.01:10;
mt=sin(t);
ct=cos(100.*t);
AMmodulated=mt.*ct;
FMmodulated=cos(100.*t.*mt);
subplot 221
plot(t,mt);
title('Message');
subplot 222
plot(t,ct);
title('Carrier');
subplot 223
plot(t,AMmodulated);
title('AM_M_o_d_u_l_a_t_e_d');
subplot 224
plot(t,FMmodulated);
title('FM_M_o_d_u_l_a_t_e_d');
end