function [lambda_p,w,m] = potenze_inverse(A,p,z,tol,m_max)

n = size(A);
w = z/norm(z);
lambda = p;
[L,U,P] = lu(A-p*eye(n));

for m = 1:m_max
    y  = L\(P*w);
    z = U\y;
    lambda_p = p+1/(w'*z);
    w = z/norm(z);

    if abs(lambda_p-lambda)<= tol*abs(lambda_p)
        break
    end
    lambda = lambda_p;
end

