function [v,i] = taylor_exp2(x,tol)
%UNTITLED6 Summary of this function goes here
%   non so cosa faccia, ah no si fa lo sviluppo di taylor

v = 0;
i = 0;
termine_sviluppo = 1;

while termine_sviluppo>= tol
    v = v+termine_sviluppo;
    i = i+1;
    termine_sviluppo = x^i/factorial(i);
end