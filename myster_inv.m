close all;
clear all;
clc;
%graphics_toolkit('gnuplot');
graphics_toolkit('qt');
N=7000;
t=[0:N-1]'*2*pi/N;

% square
r= 1./ ( abs(cos(t)) + abs(sin(t)) );
th=t;
z= r.*exp(1i*th);
figure;plot(real(z),imag(z),'r-');axis square;
figure;plot(abs(fft(z)));title('square spectrum')
%% weird periodic signal
r= 1./ (1.3 + sin(7*t));

r= (1-cos(7*t))./ (1.5 + sin(7*t));% good
r= (cos(7*t))./ (1.1 + sin(7*t));
%r= (cos(7*t)*2-1)./ (1.1 + sin(7*t));
r=(cos(7*t)+sin(14*t)-1)./(2+sin(7*t));
th =t+ sin(7*t);
z= r.*exp(1i*th);
figure;plot(r)
figure;plot(real(z),imag(z),'r-');axis square;
%figure;plot(abs(fft(z)));title('weird spectrum')