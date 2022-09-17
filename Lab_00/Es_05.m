clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_5*****************')
disp('***********************************************')
x = linspace(-pi,pi);
y = sin(x);
figure
plot(x,y,'b','linewidth',2)
title('sin(x)')

pause
close
%
x = linspace(-1,1);
y = exp(x);
figure
plot(x,y,'r','linewidth',2)
title('exp(x)')

pause
close
%
x = linspace(-5,5);
y = exp(-x.^2);
figure
plot(x,y,'g','linewidth',2)
title('exp(-x^2)')

pause
close
%
x = linspace(0.001,4*pi,1000);
y = sin(x)./x;
figure
plot(x,y,'m','linewidth',2)
title('sin(x)/x')

pause
close
%
%
x = linspace(0.001,2,10000);
y = x.*sin(1./x);
figure
plot(x,y,'k','linewidth',2)
title('xsin(1/x)')


disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
