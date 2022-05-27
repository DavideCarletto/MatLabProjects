clear all 
close all
clc

n=100;
p = n:-1:1

A1 = triu((ones(n,1)*p)-diag(ones(n-1,1),-1),-1);  % sto facendo la matrice con tutti  4321 - la matrice con codiagonale tutti 1
eigA1 = eig(A1);
A2 = A1;
A2(n,:) = A2(n,:)+1e-10 % A2(n,:)è per selezionare tutta l'ultima riga
eigA2 = eig(A2);

plot(real(eigA1),imag(eigA1),'b+', real(eigA2), imag(eigA2),'ro')  %li rappresento nel piano complesso perché non è detto che siano numeri reali

%se sul command faccio condeig(A2) capisco che il problema è mal
%condizionato ciao