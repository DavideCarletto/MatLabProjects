function fx = val_f(x)
% esercizio_0_7
% Input
% x  : vettore di punti in cui si vuole valutare f
% Output
% fx : vettore contenente le valutazioni di f nei punti memorizzati in x
%
n = length(x);
fx = zeros(1,n);
for i = 1:n
    if x(i) < 0
        fx(i) = -2*x(i);
    elseif x(i) == 0
        fx(i) = 0;
    elseif x(i) > 0
        fx(i) = 2*x(i);
    end
end