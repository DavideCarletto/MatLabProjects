clear all
close all
clc
disp('***********************************************')
disp('*****************esercizio_2_2*****************')
disp('***********************************************')

a = 0;
b = pi;
f = @(x) sin(x); 
%a = -2*pi;
%b = 2*pi;
%f = @(x) 1./(1+x.^2); 
z = linspace(a,b);
fz = f(z);
for n = 5:5:15
   x = linspace(a,b,n+1); %nodi equisp
   y = f(x);
   c1 = polyfit(x,y,n);
   p1 = polyval(c1,z);
   err1 = norm(p1-fz,inf)
   err1_100 = abs(p1-fz);
   t = -cos(((1:n+1)-1)*pi/n); 
   x = (b-a)/2*t+(b+a)/2; %nodi Chebyshev-Lobatto traslati
   y = f(x);
   c2 = polyfit(x,y,n);
   p2 = polyval(c2,z);
   err2 = norm(p2-fz,inf)
   err2_100 = abs(p2-fz);
   figure(1)
   plot(z,p1,'b',z,p2,'r',z,fz,'g',x,y,'ko','linewidth',3)
   legend('equispaziati','Chebyshev-Lobatto','sin(x)','dati interp')
   figure(2)
   plot(z,err1_100,'b',z,err2_100,'r','linewidth',3)
   legend('equispaziati','Chebyshev-Lobatto')
   pause
end
disp('**********************************************FINE ESERCIZIO**********************************************')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
