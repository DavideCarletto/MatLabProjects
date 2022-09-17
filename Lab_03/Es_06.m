clear all
format short e
% si definisce un contatore i, che viene incrementato di un'unità 
% a ogni passo, per memorizzare in K2(i), err1(i) e err2(i) 
% il numero di condizionamento e gli errori calcolati a ogni passo

i = 1;
for n = 1000:1000:5000   % altri valori di n = 100:100:500%
    A = rand(n);
    K2(i) = cond(A);
    b = sum(A,2);
    tic  % calcola i tempi di calcolo della risoluzione di Ax = b mediante PA=LU
    [L,U,P] = lu(A);
    y = L\(P*b);
    x = U\y;
    err1(i) = norm(ones(n,1)-x)/norm(ones(n,1));  %calcola l'errore relativo associato alla soluzione calcolata in norma 2
    t1 = toc;
    tic  % calcola i tempi di calcolo della risoluzione di Ax = b mediante A=QR
    [Q,R] = qr(A);
    x = R\(Q'*b);
    err2(i) = norm(ones(n,1)-x)/norm(ones(n,1));  %calcola l'errore relativo associato alla soluzione calcolata in norma 2
    t2 = toc;
    rapporto(i) = t2/t1;  % calcola il rapporto dei tempi di calcolo delle due procedure 
    i = i+1;
end
[K2' err1' err2' rapporto']  % stampa la tabella dei valori calcolati

% per n grande i tempi di calcolo t1 della prima procedura sono inferiori a
% quelli t2 della seconda procedura. Pertanto, rapporto(i) > 1 per ogni i
disp('**********************************************FINE ESERCIZIO**********************************************')