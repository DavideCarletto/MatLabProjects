clear all
close all
clc

for n = 5:5:100
    A = -ones(n);
    A = triu(A,1)+ diag(ones(n,1));
    [U,S,V] = svd(A);
    detA = det(A)
    rankA = rank(A)
    s = diag(S)
end