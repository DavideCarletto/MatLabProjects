clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_3_8*****************')
disp('***********************************************')

n = 5;
A = zeros(n);
Q = zeros(n);
A(:,1) = [4;2;1;5;-1];
A(:,2) = [1;5;2;4;0];
A(:,3) = [3;10;6;2;1];
A(:,4) = [3;1;6;2;-1];
A(:,5) = [2;-1;2;0;1];
% implementa la procedura di ortogonalizzazione di Gram-Schmidt
for j = 1:n
    Q(:,j) = A(:,j);
    for i = 1:j-1
        Q(:,j) = Q(:,j)-A(:,j)'*Q(:,i)*Q(:,i);
    end
    Q(:,j) = Q(:,j)/norm(Q(:,j));
end

% verifica l'ortogonalità di Q (Q'*Q=Q*Q'=I)
errs = norm(Q'*Q-eye(5),inf)
errd = norm(Q*Q'-eye(5),inf)
disp('**********************************************FINE ESERCIZIO**********************************************')