clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_3_7*****************')
disp('***********************************************')

format short e
A = [1 2 3 4;-1 0 4 1;3 5 1 0;2 -1 0 1;1 1 -1 1;2 -1 0 3];
b = [1:6]';
[m n] = size(A);
r = rank(A) % calcola il rango della matrice A. N.B. il rango è massimo
[Q,R] = qr(A); % calcola la fattorizzazione QR di A
Rt = R(1:n,1:n); % identifica la matrice R tilde, non singolare costituita dalle prime n righe e n colonne
c = Q'*b;  % calcola il vettore c
c1 = c(1:n); % identifica il vettore c1 costituito dai primi n elementi di c 
cstar = Rt\c1 % risolve il sistema lineare per determinare la soluzione nel senso dei minimi quadrati
x = A\b % calcola la medesima soluzione con il comando \ per un confronto 
err = norm(cstar-x)/norm(x) % calcola l'errore relativo associato alla soluzione cstar 

disp('**********************************************FINE ESERCIZIO**********************************************')