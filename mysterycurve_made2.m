%% create new "mystery curve" by r(t) and theta(t)

clear all;
close all;
clc;
Fold=5;
N=3000;
t=[0:N-1]'*2*pi/N;
r=3+cos(2*Fold*t);

th=t+sin(2*Fold*t)/5-sin(3*Fold*t+0.5)/9;

z=r.*exp(1i*th);
x=real(z);
y=imag(z);
figure;plot(x,y,'r-');axis square;
hold on;
plot(x(1:floor(length(t)/Fold)),y(1:floor(length(t)/Fold)),'b-');
hold off;
