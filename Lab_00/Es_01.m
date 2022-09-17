clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_1*****************')
disp('***********************************************')

x = [1:-0.1:0]
x([1 4 3]) 
disp('estrae le componenti 1, 4 e 3 del vettore x')
pause
%
x = [1:-0.1:0]
x([1:2:7 10])=zeros(1,5) 
disp('pone le componenti 1, 3, 5, 7 e 10 di x uguale a 0') 
pause
%
x = [1:-0.1:0]
x([1 2 5])=[0.5*ones(1,2) -0.3] 
disp('pone le componenti 1, 2 e 5 di x uguali a 0.5, 0.5 e -0.3, rispettivamente')
pause
%
x = [1:-0.1:0]
y = x(end:-1:1) 
disp('definisce un vettore y, le cui componenti sono quelle del vettore x ordinate dall"ultima alla prima')

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

