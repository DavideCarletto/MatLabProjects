function [v,i] = taylor_exp(x,tol)
% esercizio_0_8
% Input
% x   : punto in cui si vuole valutare il polinomio di Taylor
% tol : tolleranza prefissata
% Output
% v   : valore del polinomio calcolato in x con tolleranza tol
% i   : grado del polinomio
%
v = 0;
i = 0;
termine_sviluppo = 1;
while termine_sviluppo >= tol
    v = v+termine_sviluppo;
    i = i+1;
    termine_sviluppo=x^i/factorial(i);
end

