
clc
disp('***********************************************')
disp('*****************esercizio_4_4*****************')
disp('***********************************************')

clear all
close all
m_max = 100;
tol = 1.0e-10;
z = ones(3,1);
p = 0.5;
A_1 = [1 -2 0; 0 2 0; 1 1 3];
[lambda_1,w1,m1] = potenze_inverse(A_1,p,z,tol,m_max)
plot(1:m1+1,lambda_1,'b+-','linewidth',2)
autovalore_p = lambda_1(end)
autovalori_A_1_eigs_tutti = eigs(A_1,3)
autovalori_A_1_eigs_p = eigs(A_1,1,p)
% Il metodo delle potenze inverse converge all'autovalore 1, 
% che è l'autovalore di A più vicino a p
pause

A_2 = [0.5 -2 0; 0 2 0; 1 1 3];
[lambda_2,w2,m2] = potenze_inverse(A_2,p,z,tol,m_max)
plot(1:m2+1,lambda_2,'b+-','linewidth',2)
autovalore_p = lambda_2(end)
autovalori_A_2_eigs_tutti = eigs(A_2,3)
autovalori_A_2_eigs_p = eigs(A_2,1,0.49)
% Il metodo delle potenze inverse non converge perché p=0.5 
% è autovalore di A e quindi (A-pI) non è invertibile!!! 
% Occorrerebbe prevedere un controllo
% sull'eventualità che p possa essere già autovalore
% di A; in tal caso, non ha senso applicare il metodo.
pause

A_3 = [0 -2 0; 0 1 0; 1 1 3];
[lambda_3,w3,m3] = potenze_inverse(A_3,p,z,tol,m_max)
plot(1:m2+1,lambda_3,'b+-','linewidth',2)
autovalore_p = lambda_3(end)
autovalori_A_3_eigS_tutti = eigs(A_3,3)
autovalori_A_3_eigs_p = eigs(A_3,2,p)
% Il metodo delle potenze inverse non converge perché p=0.5 è 
% equidistante dagli autovalori 0 e 1 della matrice A_3 e quindi 
% esistono due autovalori distinti (reali e opposti)
% di modulo massimo per la matrice (A-pI)^(-1)!

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%