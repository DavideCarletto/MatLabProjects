clear all 
close all
clc

n=100;
p = n:-1:1

A1 = triu((ones(n,1)*p)-diag(ones(n-1,1),-1),-1);  % sto facendo la matrice con tutti  4321 - la matrice con codiagonale tutti 1
eigA = eig(A);
A2 = A1;
A2(n,:) %cosa ti devo dire
