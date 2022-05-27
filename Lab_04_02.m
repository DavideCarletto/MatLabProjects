clear all
close all 
clc

A = [0.1 3.8 0; 1 0 0; 0 1 0];
toll = 1e-10;
m_max = 100;
z = [1 2 3]'


[lambda,w,m] = potenze(A,z,toll,m_max)

eiga = eig(A)

plot(1:m+1, lambda, 'b+-')