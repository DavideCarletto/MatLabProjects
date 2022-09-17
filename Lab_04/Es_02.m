
clc
disp('***********************************************')
disp('*****************esercizio_4_2*****************')
disp('***********************************************')

clear all
close all
m_max = 100;
tol = 1.0e-10;
z = [1;2;3];
A_1 = [1 2 0; 1 0 0; 0 1 0];
[lambda_1,w1,m1] = potenze(A_1,z,tol,m_max)
plot(1:m1+1,lambda_1,'b+-','linewidth',2)
lambda_max_1=lambda_1(end)
autovalori_A_1_eig = eig(A_1)
% Il metodo converge abbastanza velocemente perché la rapidità 
% dipende dal rapporto |lambda_2|/|lambda_1|=1/2 e, pertanto,
% raggiunge la tolleranza tol in 35 iterazioni
pause
%%%%%
A_2 = [0.1 3.8 0; 1 0 0; 0 1 0];
[lambda_2,w2,m2] = potenze(A_2,z,tol,m_max)
plot(1:m2+1,lambda_2,'b+-','linewidth',2)
lambda_max_2 = lambda_2(end)
autovalori_A_2_eig = eig(A_2)
% Il metodo converge lentamente perché la rapidità 
% dipende dal rapporto |lambda_2|/|lambda_1|=1.9/2=0.95
% e, pertanto, 100 iterazioni non sono sufficienti per 
% raggiungere la tolleranza prefissata 
pause
%%%%%
A_3 = [0 -1 0; 1 0 0; 0 1 0];
[lambda_3,w3,m3] = potenze(A_3,z,tol,m_max)
plot(1:m3+1,lambda_3,'b+-','linewidth',2)
lambda_max_3 = lambda_3(end)
autovalori_A_3_eig = eig(A_3)
% Il metodo non converge perché A ha due autovalori i e -i
% complessi e coniugati di modulo massimo

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%