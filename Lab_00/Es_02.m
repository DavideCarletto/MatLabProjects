clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_2*****************')
disp('***********************************************')

A = [1:4;5:8;9:12] % A è una matrice di dimensioni 3x4
size(A) 
disp('fornisce il numero delle righe e il numero delle colonne della matrice A')
pause

A(1:2,4)
disp('estrae la sottomatrice di A formata dagli elementi appartenenti alle prime due righe e alla quarta colonna')
pause

A(3,2) = A(1,1) 
disp('pone l"elemento di posto (3,2) della matrice uguale all"elemento di posto (1,1)')
pause

A(1:2,4) = zeros(2,1) 
disp('pone gli elementi della sottomatrice di A, formata dagli elementi appartenenti alle prime due righe e alla quarta colonna, uguali a zero')
pause

A = [1:4;5:8;9:12]
A(2,:) = A(2,:)-A(2,1)/A(1,1)*A(1,:) 
disp('ridefinisce gli elementi della seconda riga di A come combinazione lineare degli elementi della seconda riga e della prima riga:')
disp('precisamente sottrae agli elementi della seconda riga gli elementi della prima riga moltiplicati per il fattore A(2,1)/A(1,1)')

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%