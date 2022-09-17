clear all
close all
clc
disp('***********************************************')
disp('*****************esercizio_1_4*****************')
disp('***********************************************')

x = pi/4;
k = 1:50;
h = 2.^(-k);
r = (sin(x+h)-sin(x))./h;
err = abs(cos(x)-r)/abs(cos(x));
loglog(h,err,'r','linewidth',2)
hold on
r2 = 2*sin(h/2).*cos(x+h/2)./h;   %formula di prostaferesi
err2 = abs(cos(x)-r2)/abs(cos(x));
loglog(h,err2,'g','linewidth',2)
[err' err2']