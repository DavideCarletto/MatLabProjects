clear
clc
close
format long e

z = [1;1;1];
tol = 10^-10;
p =.5;
m_max = 50;

A1 = [1 -2 0; 0 2 0; 1 1 3];
A2 = [.5 -2 0; 0 2 0; 1 1 3];
A3 = [0 -2 0; 0 1 0; 1 1 3];

%Controllo prima gli autovalori per stabilire se il metodo convergerà
e1 = eig(A1);   % 3 1 2  --> convergerà a 1
e2 = eig(A2);   % 3 0.5 2 --> con p=.5 il metodo non converge perché è già
                    % autovalore
e3 = eig(A3);    % 3 0 1  --> non converge perché ci sono due autovalori 
                % equispaziati da .5


[lambda1] = potenze_inverse(A1,z,p,tol,m_max);
[lambda2] = potenze_inverse(A2,z,p,tol,m_max);
[lambda3] = potenze_inverse(A3,z,p,tol,m_max);

int1 = [1:1:length(lambda1)];
int2 = [1:1:length(lambda2)];
int3 = [1:1:length(lambda3)];

plot(int1, lambda1);    %converge a 1
pause
plot(int2, lambda2);    %si rompe male perché non riesce a risolvere il sistema
pause
plot(int3, lambda3);    %oscilla perché non riesce a convergere a nessuno dei
                        %due autovalori equispaziati
