clear all
close all
clc
disp('***********************************************')
disp('*****************esercizio_3_3*****************')
disp('***********************************************')

n = 100;  
for i = 1:n % doppio ciclo for per definire A
    for j = 1:n
        A(i,j) = i*max([i j]);
    end
end
determinante = det(A) % calcola il determinante della matrice per verificare che sia invertibile
[L,U,P] = lu(A);
inversa_c = inv(U)*inv(L)*P;  % calcola l'inversa di A usando i fattori P,L,U
inversa = inv(A);  % calcola l'inversa di A usando il comando inv di Matlab
err = norm(inversa-inversa_c,inf)/norm(inversa,inf) % calcola l'errore relativo associato in norma infinito
% le due matrici inversa_c e inversa sono numericamente equivalenti,
% poiché l'errore relativo (in norma infinito) è circa uguale o 
% minore della precisione di macchina

disp('**********************************************FINE ESERCIZIO**********************************************')