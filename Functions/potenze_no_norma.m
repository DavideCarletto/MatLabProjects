function [lambda,w,m] = potenze_no_norma(A,z,m_max)
w = z;
for m = 1:m_max
    z = A*w;
    lambda = w'*z/(w'*w);
    w = z;
end