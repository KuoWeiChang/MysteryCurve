%% create new "mystery curve" by r(t) and theta(t)

clear all;
close all;
clc;

Fold=5;
N=6001;
t=[0:N-1]'/N*2*pi;

r=1-1/4*cos(Fold*t)+2/3*cos(2*Fold*t);
th=-1*cos(2*Fold*t)+0.4*cos(1*Fold*t)+t*1;
z=r.*exp(1i*th);
x=real(z);
y=imag(z);
figure;plot(x,y,'r.');axis square;
hold on;
plot(x(1:floor(length(t)/5)),y(1:floor(length(t)/5)),'b.');
hold off;


Z=fft(z);
Z=fftshift(Z);
figure;plot([-50:50],abs(Z(2951:3051)));
