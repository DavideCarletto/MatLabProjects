function [lambda] = potenze_inverse(A,z,p, tol, m_max)
%Potenze inverse
w = z/norm(z);
n = size(A,1);
lambda(1) = 0;
[L,U,P] = lu(A-p*eye(n));

for m=1:m_max
    y = L\(P*w);
    z = U\y;
    
    lambda(m+1) = p + 1/(w'*z);

    if(abs(lambda(m+1)-lambda(m))<=tol*abs(lambda(m+1)))
        break
    end

    w = z/norm(z);
end

end