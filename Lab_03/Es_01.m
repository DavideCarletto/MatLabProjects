clear all
close all
clc
format long e
disp('***********************************************')
disp('*****************esercizio_3_1*****************')
disp('***********************************************')

% si definisce un contatore i, che viene incrementato di un'unità 
% a ogni passo, per memorizzare in Kinf(i) e err(i) il numero di 
% condizionamento e l'errore calcolato a ogni passo
i = 1;  
ordine = 5:5:15;  % ordine del sistema = 5,10,15 
for n = ordine
    A = hilb(n);  % matrice dei coefficienti di Hilbert
    Kinf(i) = cond(A,inf); %calcola il numero di condizionamento in norma infinito
    b = sum(A,2); % definisce il termine noto in modo che la soluzione coincida con il vettore con tutte le componenti uguali a 1
    x = A\b       % risolve il sistema
    err(i) = norm(ones(n,1)-x,inf)/norm(ones(n,1),inf); % calcola l'errore relativo associato all'approssimazione fornita da \
    i = i+1; %incrementa i di un'unità
end
[ordine' err' Kinf'] %stampa una tabella con i valori calcolati
disp('**********************************************FINE ESERCIZIO**********************************************')