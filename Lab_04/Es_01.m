clc
disp('***********************************************')
disp('*****************esercizio_4_1*****************')
disp('***********************************************')

clear all
close all
format long e
n = 100;

% per generare A1 si procede nel seguente modo:
% 1) si genera il vettore p i cui elementi sono n,n-1,,...,2,1
% 2) con il comando p(ones(n,1), :) si ripete n volte il vettore p
% e si genera una matrice le cui n righe sono tutte uguali al 
% vettore p; 
% 3) con il comando diag( ones(n-1,1), -1) si genera una matrice i cui 
% elementi sono tutti uguali a zero tranne quelli della codiagonale 
% inferiore che sono uguali a 1;
% 4) infine, con triu(A,-1) si estraggono gli elementi di A a partire 
% dalla codiagonale inferiore e si pongono uguali a 0 quelli 
% sotto la codiagonale inferiore

p = n:-1:1;
A1 = triu( p( ones(n,1), :) - diag( ones(n-1,1), -1), -1 );

% si calcolano gli autovalori di A1
lambda1 = eig(A1); 
% e si rappresentano graficamente
plot(real(lambda1),imag(lambda1),'r*','markersize',6)
hold on
% si genera la matrice perturbata A1p, perturbando
% gli elementi dell'ultima riga di A1
A1p = A1;
A1p(n,:) = A1p(n,:)+1.0e-10; 
% si calcolano gli autovalori di A1p
lambda1p = eig(A1p); 
% e si rappresentano graficamente
plot(real(lambda1p),imag(lambda1p),'ko','markersize',6)
pause

% dal grafico si deduce che il problema è mal condizionato in quanto
% a una piccola perturbazione negli elementi della matrice non è corrisposta 
% una perturbazione negli autovalori dello stesso ordine di grandezza

% il cattivo condizionamento è segnalato dal comando condeig:
% le componenti del vettore output, che rappresentano il 
% condizionamento di ciascun autovalore, risultano molto maggiore di 1
condizionamento_autovalori_A1 = condeig(A1)
hold off
close
pause

% si ripetono le stesse istruzioni precedenti per la matrice A2
A2 = triu(A1)+triu(A1,1)';
lambda2 = eig(A2);
plot(real(lambda2),imag(lambda2),'r*','markersize',6)
hold on
A2p = A2;
A2p(n,:) = A2p(n,:)+1.0e-10;
lambda2p = eig(A2p);
plot(real(lambda2p),imag(lambda2p),'ko','markersize',6)
pause
condizionamento_autovalori_A2 = condeig(A2)
err_mat_A2 = norm(A2-A2p)
err_eig_A2 = abs(sort(lambda2)-sort(lambda2p))
% In questo caso il problema è ben condizionato (la matrice è simmetrica) 
% e gli autovalori della matrice perturbata sono affetti da un errore che è 
% dello stesso ordine di grandezza (anzi più piccolo) dell'errore associato 
% alla matrice perturbata

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%