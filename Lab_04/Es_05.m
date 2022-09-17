clc
disp('***********************************************')
disp('*****************esercizio_4_5*****************')
disp('***********************************************')


clear all
close all
m_max = 1000;
tol = 1.0e-14;
A = [5 0 1 -1; 0 2 0 -.5; 0 1 -1 1; -1 -1 0 0];
n = size(A,1);
z = ones(n,1);
gershgorin(A)
% Dall'analisi dei cerchi riga e dei cerchi colonna
% si osserva che c'è un solo autovalore di modulo 
% massimo che appartiene al cerchio di centro 5 e raggio 1
p = input('fornire p=') 
tic
[lambda,w,m] = potenze(A,z,tol,m_max)
tempo_potenze = toc
tic
[lambda_p,w,m] = potenze_inverse(A,p,z,tol,m_max)
tempo_potenze_inverse = toc
% Il numero delle iterazioni impiegate dal metodo delle potenze inverse
% per raggiungere la tolleranza desiderata dipende dalla scelta di p. 
% Scegliendo un valore di p molto vicino all'autovalore desiderato,
% il metodo delle potenze inverse potrebbe impiegare un numero di iterazioni 
% inferiore rispetto al metodo delle potenze.
% Ciononostante il metodo delle potenze inverse potrebbe risultare più 
% costoso del metodo delle potenze in quanto ad ogni passo richiede la 
% risoluzione di due sistemi triangolari. 
% Per esempio, scegliendo p=5.4, il tempo impiegato dal metodo delle potenze 
% per eseguire 35 iterazioni (sul mio PC) è inferiore a quello impiegato dal
% metodo delle potenze inverse per eseguire 12 iterazioni.

disp('**********************************************FINE ESERCIZIO**********************************************')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
