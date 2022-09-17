clear all
clc

a =-5;
b = 5;

f = @(x) 1./(1+x.^2);
z = linspace(a,b);
fz = f(z);

for n = 6:4:14
    x = linspace(a,b,n);
    y = f(x);

    s = spline(x,y,z);
    plot(x,y,'ro',z,s,'b',z,fz,'g');
    legend('nodi','spline con n-nodi','funzione');
    pause
       
end
