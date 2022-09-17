clear all
clc

a = -1;
b = 1;

f = @(x) (1-x.^2).^(5/2);
fd = @(x) (5/2)*(1-x.^2).^(5/2-1).*(-2*x);
f0 = fd(-1);
fn = fd(1);
z = linspace(a,b);
fz = f(z);

for k = 2:5
    n = 2^k;
    x = -1+2*(0:n)/n;
    y = f(x);
    s = spline(x,y,z);
    s1 = spline(x,[f0 y fn],z);
    figure(1)
    plot(x,y,'ko',z,fz,'r',z,s,'b',z,s1,'g','linewidth',3)
    legend('dati','f(x)','spline not-a-knot','spline vincolata')
    pause
    figure(2)
    semilogy(z,abs(s-fz),'b',z,abs(s1-fz),'g','linewidth',3)
    legend('errore spline not-a-knot','errore spline vincolata')
    err = norm(fz-s,inf)
    err1 = norm(fz-s1,inf)
    pause
end

% la spline vincolata fornisce un'approssimazione più
% accurata della spline not-a-knot in quanto, a differenza di
% quest'ultima, oltre alle condizioni di interpolazione, soddisfa
% due ulteriori condizioni che la collegano alla funzione f
