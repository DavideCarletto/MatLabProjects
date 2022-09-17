clc
disp('***********************************************')
disp('*****************esercizio_4_7*****************')
disp('***********************************************')

clear all
close all
format long e
for n = 5:5:100
    A = -ones(n);
    A = triu(A,1)+diag(ones(n,1));
    [U,S,V] = svd(A);
    determinante = det(A)
    rango = rank(A)
    s = diag(S);
    pause
end
% Il determinante della matrice A è 1 (prodotto degli elementi della diagonale)
% e, pertanto, il rango effettivo della matrice è n. 
% Il rango numerico (che è calcolato a meno di una tolleranza) è invece n-1, a 
% partire da un certo ordine n della matrice in poi! 
% Tale risultato va interpretato nel seguente modo: 
% al crescere di n la matrice si avvicina sempre di più 
% a una matrice singolare. Infatti, l'ultimo valore singolare s(n) decresce
% al crescere di n, e ciò conferma che la distanza della matrice assegnata
% dall'insieme delle matrici di rango n-1 diminuisce all'aumentare di n.
% Si osservi che tale comportamento non si deduce dal valore del
% determinante, che è costantemente uguale a 1, ma dal rango numerico ovvero 
% dai valori singolari della matrice.
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%