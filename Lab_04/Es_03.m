
clc
disp('***********************************************')
disp('*****************esercizio_4_3*****************')
disp('***********************************************')

clear all
close all
z = (1:3)';
A = [0.1 3.8 0; 1 0 0; 0 1 0];
for m_max = 500:300:1100
    [lambda,w,m] = potenze_no_norma(A,z,m_max);
    w
    pause
end
% Se non si normalizzano i vettori iterate si hanno problemi di overflow!

disp('**********************************************FINE ESERCIZIO**********************************************')