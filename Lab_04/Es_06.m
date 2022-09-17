clc
disp('***********************************************')
disp('*****************esercizio_4_6*****************')
disp('***********************************************')

clear all
close all
n = 10;
A = hilb(n);
m_max = 100;
tol = 1.0e-14;
[d,m] = qr_base(A,tol,m_max);
err = abs(sort(eig(A))-sort(d))

% Il massimo errore assoluto associato agli autovalori
% determinati con il metodo QR è 1.3323e-15

B1 = [0 0 2; 1 0 1;  0 1 1];
n = size(B1,1);
b = eig(B1);
% La matrice B ha un autovalore reale e due complessi e coniugati.
% La convergenza del metodo QR nella sua forma base non è dunque
% garantita. Eseguiamo comunque 100 iterazioni del metodo.
A = B1;
for  m = 1:m_max
    [Q,R] = qr(A);
    A = R*Q;
end
A
% La struttura della matrice A che si ottiene alla 100-esima iterazione
% è quasi triangolare. Verifichiamo che gli autovalori che si deducono 
% dalla matrice finale A siano effettivamente approssimazioni degli 
% autovalori di B.
a = zeros(n,1);
a(1) = A(1,1);
a(2:3) = eig(A(2:3,2:3));
err = abs(sort(a)-sort(b))
% La forma base del metodo QR ha dunque fornito un'approssimazione degli 
% autovalori della matrice B.

% Ripetiamo lo stesso esercizio per la seguente matrice
B2 = [0 1 0 1; 2 0 4 -2; -1 0 -1 0; -1 2 1 0];
n = size(B2,1);
b = eig(B2);
A = B2;
for  m = 1:m_max
    [Q,R] = qr(A);
    A = R*Q;
end
A
a = zeros(n,1);
a(1:2) = eig(A(1:2,1:2));
a(3) = A(3,3);
a(4) = A(4,4);
err = abs(sort(a)-sort(b))
% Anche in questo caso, la forma base del metodo QR ha 
% fornito un'approssimazione degli autovalori della matrice B.

disp('**********************************************FINE ESERCIZIO**********************************************')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%