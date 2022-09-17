
format long e
n = 1:16;
x = 10.^-n;

f1_x = (1-cos(x))./x.^2
f1_ex = 2*sin(x/2).^2./x.^2;

er1 = abs(f1_x-f1_ex)./abs(f1_ex);

[x' f1_x' er1']
figure
loglog(x,er1,'linewidth',2)

clear all
close all
clc
format long e

n = 1:16;
x = 10.^(-n);
f2_x = (exp(x)-1)./x;
f2_ex = 0;
for i = 1:16
    f2_ex = f2_ex+x.^(i-1)/factorial(i);
end    
er2 = abs(f2_x-f2_ex)./abs(f2_ex);
[x' f2_x' er2']
figure
loglog(x,er2,'linewidth',2)

clear all 
close all 
clc 
format long e

n = 1:16;
x = 10.^(-n);

f3_x = (1-sqrt(1-x.^2));
f3_ex = x.^2./(1+sqrt(1+x.^2));

er3 = abs(f3_x-f3_ex)./abs(f3_ex)

[x' f3_x' f3_ex']
figure
loglog(x,er3,'linewidth',2)

clear all 
close all 
clc 
format long e

n = 1:16;
x = 10.^(-n)

f4_x = ((x+1).^2-1)./x;
f4_ex = x+2

er4 = abs(f4_x-f4_ex)./abs(f4_ex)

[x' f4_x' f4_ex']
figure
loglog(x,er4,'linewidth',2)
