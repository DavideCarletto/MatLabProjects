clear all
close all
clc

n=10;
A = hilb(n);
m_max = 100;
tol = 1e-14;

[d,m] = qr_base(A,tol,m_max);

err = abs(abs(sort(eig(A)-sort(d))))