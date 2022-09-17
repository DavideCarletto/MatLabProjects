clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_3_4*****************')
disp('***********************************************')

p = 30;
n = 100;
A = rand(n); % genera una matrice di numeri pseudo-casuali
b = sum(A,2);
x = zeros(n,p); % definisce una matrice x di dimensioni n per p, nella cui i-esima colonna verrà memorizzato il vettore soluzione dell'i-esimo sistema
tic % attiva il timer per calcolare il tempo di calcolo per risolvere i sistemi lineari tramite PA=LU
[L,U,P] = lu(A); % calcola la fattorizzazione PA = LU una volta per tutte!
tn = P*b; % genera il termine noto del primo sistema lineare
for i = 1:p
    y = L\tn;  % risolve ad ogni passo due sistemi triangolari
    x(:,i) = U\y;  
    tn = P*x(:,i); % genera il termine noto del sistema lineare successivo
end
toc % arresta il timer


tic % attiva il timer per calcolare il tempo di calcolo per risolvere i sistemi lineari tramite \
x(:,1) = A\b;
for i = 2:p
    x(:,i) = A\x(:,i-1);
end
toc

% per n grande i tempi di calcolo della prima procedura sono inferiori a
% quelli della seconda procedura

disp('**********************************************FINE ESERCIZIO**********************************************')