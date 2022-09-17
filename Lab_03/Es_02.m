clear all
close all
clc
disp('***********************************************')
disp('*****************esercizio_3_2*****************')
disp('***********************************************')

n = 100;
for i = 1:n  % doppio ciclo for per definire A
    for j = 1:n
        A(i,j) = max([i j]);
    end
end
Kinf = cond(A,inf)
b = sum(A,2);
[L,U] = elleu(A); % calcola i fattori L e U senza eseguire scambi 
y = L\b;  
x_nopiv = U\y; % risolve il sistema Ax=b senza applicare il pivoting
err_nopiv = norm(ones(n,1)-x_nopiv,inf)/norm(ones(n,1),inf) % calcola l'errore relativo associato alla soluzione calcolata senza pivoting
[L,U,P] = lu(A); % calcola i fattori L e U applicando il pivoting e quindi operando scambi
y = L\(P*b);
x_piv = U\y;
err_piv = norm(ones(n,1)-x_piv,inf)/norm(ones(n,1),inf) % calcola l'errore relativo associato alla soluzione calcolata con pivoting

% la soluzione ottenuta mediante il metodo dell'eliminazione di
% Gauss con il pivoting (ovvero ottenuta tramite la fattorizzazione PA=LU)
% è più accurata di quella ottenuta senza pivoting (elleu)

disp('**********************************************FINE ESERCIZIO**********************************************')