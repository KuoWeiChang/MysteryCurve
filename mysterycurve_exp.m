clear all;
close all;
clc;

N=1000;
T=[0:N-1]*2*pi/N;


R(1)=1;
R(2)=6;
R(3)=-14;

c=[1,1/2,1i/3];

z2=exp(1i*R(1)*T)*c(1)+exp(1i*R(2)*T)*c(2)+exp(1i*R(3)*T)*c(3);
x=real(z2);
y=imag(z2);
M=max(abs(z2));
m=min(abs(z2));

A=[1,0;0,1];
X=A*[x;y];
x=X(1,:);
y=X(2,:);
figure;plot(abs(z2));axis square;
figure;plot(unwrap(atan(y./x)*2)/2);ylabel('Phase')
