clear all
close all
clc
disp('***********************************************')
disp('*****************esercizio_1_3*****************')
disp('***********************************************')

m = 40;
x = zeros(m,1);
x(1) = 2;
for n = 2:m
    x(n) = 2^(n-1/2)*sqrt(1-sqrt(1-4^(1-n)*x(n-1)^2));
end
errore_relativo = abs(pi-x)/abs(pi);
semilogy(1:m,errore_relativo,'linewidth',2)
pause
%espressione equivalente
m = 40;
x = zeros(m,1);
x(1) = 2;
for n = 2:m
    x(n) = x(n-1)*sqrt(2/(1+sqrt(1-4^(1-n)*x(n-1)^2)));
end
errore_relativo = abs(pi-x)/abs(pi);
semilogy(1:m,errore_relativo,'linewidth',2)
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all