clear all
clc

x = [1:20];
y = [243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 146 186];
z = linspace(1,20,1000);

s = interp1(x,y,z);

plot(x,y,'b',z,s,'r','linewidth',2)
hold on
s11 = interp1(x,y,[2.5 19.5])
plot([2.5 19.5],s11,'go','linewidth',3)
grid on