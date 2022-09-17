clear all 
clc

% taylor_exp_main
x = 1;
tol = 1.0e-10;
[v,i] = taylor_exp(x,tol)
err_rel = abs(exp(1)-v)/abs(exp(1))