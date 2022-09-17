clear all 
clc

a= 5;
b = -5;
f_x = @(x)1./(1+x.^2);
z = linspace(a,b);
fz = f_x(z);

for n = 5:4:13
    x=linspace(a,b,n+1);
    t = -cos(((2*(1:n+1)-1)*pi)/(2*(n+1)));
    x = ((b-a)/2)*t+(b+a)/2;
    y =f_x(x);
    c = polyfit(x,y,n);
    p = polyval(c,z);

    plot(z,p,'b',z,fz,'r',x,y,'ko','linewidth',3)
    pause
end