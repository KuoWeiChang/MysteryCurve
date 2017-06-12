close all;
clear all;
clc;
%graphics_toolkit('gnuplot');
graphics_toolkit('qt');
N=6000;
t=[0:N-1]'*2*pi/N;

r=cos(3*t)*1.5+2;
th=t*11+cos(3*t)*3;
z=r.*exp(1i*th);
figure;plot(real(z),imag(z),'r');axis square
figure;plot(real(z),'r',r,'b-.',-r,'b--')
figure;plot(r.*cos(12*t))
figure;plot(r)