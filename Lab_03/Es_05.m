clear all
close all
clc
disp('***********************************************')
disp('*****************esercizio_3_5*****************')
disp('***********************************************')

n = 100;
B = diag(10*ones(n,1))+diag(5*ones(n-1,1),1)+diag(-5*ones(n-1,1),-1); 
determinante = det(B)
A = B'*B;  % poiché B è non singolare, A è certamente simmetrica e definita positiva
Kinf = cond(A,inf)
R = chol(A); % calcola il fattore di Choleski R tale che A = R'*R
R1 = inv(R);
inversa_c = R1*R1'; % calcola l'inversa di A tramite fattorizzazione di Choleski 
inversa = inv(A);   % calcola l'inversa di A tramite comando inv di Matlab 
err_inv = norm(inversa-inversa_c,inf)/norm(inversa,inf)
b = sum(A,2); 
y = R'\b;  % risolve il sistema Ax=b con fattorizzazione di Choleski 
x = R\y;
err_sol = norm(ones(n,1)-x,inf)/norm(ones(n,1),inf) %calcola l'errore relativo associato alla soluzione calcolata in norma infinito
disp('**********************************************FINE ESERCIZIO**********************************************')