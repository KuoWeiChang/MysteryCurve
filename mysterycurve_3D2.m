clear all;
close all;
clc;
% pkg load signal;
Fold=5;
N=12000;
t=2*pi*[0:N-1]'/N;

k=1;

e=exp(1i*Fold*t)-1i/4*exp(1i*-2*Fold*t);
e=e.*exp(1i*k*t);
x=real(e);
y=imag(e);
figure;plot(x,y,'r.')
z=sin(Fold*t)*2+3;
figure;plot3(x,y,z,'r.')
hold on
plot3(x(1:N/Fold),y(1:N/Fold),z(1:N/Fold),'bo')
plot3(x(N/Fold+1:2*N/Fold),y(N/Fold+1:2*N/Fold),z(N/Fold+1:2*N/Fold),'go')
hold off