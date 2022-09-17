clc
disp('***********************************************')
disp('*****************esercizio_4_8*****************')
disp('***********************************************')

clear all
close all
format short e
A = [3 -2 1 2; -1 0 2 1; 0 5 -6 -1; 1 1 -1 1; 1 -1 -1 -1; 8 -1 -5 2];
b = [1; -3; 7; 0; -6; 2];
r = rank(A); % la matrice ha rango 3
rangoAb = rank([A b]); % la matrice orlata ha rango 4
% Il sistema non ammette soluzione classica e
% si calcola la soluzione ai minimi quadrati.
% Poiché la matrice A non ha rango massimo 4,
% esistono infinite soluzioni ai minimi quadrati
% ma solo una di esse ha norma 2 minima. Tale soluzione
% si ottiene con la decomposizione ai valori 
% singolari di A.
[U,S,V] = svd(A);
valori_singolari = diag(S);
ystar = zeros(4,1);
ystar(1:r) = (U(:,1:r)'*b)./valori_singolari(1:r);
xstar = V*ystar;
% La soluzione calcolata si può ottenere anche
% semplicemente con la seguente istruzione.
x = pinv(A)*b;
err = norm(xstar-x)
%
% Si osservi che tutte le soluzioni ai minimi quadrati del sistema 
% sono date da xstar+z con z appartenente al Ker(A). Il 
% Ker(A) è generato dal quarto vettore colonna di V e, pertanto,
% le soluzioni sono del tipo xstar+c*V(:,4), con c costante.

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%