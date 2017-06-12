%MYSTERY CURVE

clear all;
close all;
clc;
N=700;
T=[0:N-1]/N*2*pi;
h=figure;

for k=1:9
a=ceil(rand(1,1)*3); 
p=[3,5,7];
r=ceil(rand(1,1)*(p(a)-1));
s=[1,-1,2];
c=(rand(3,1)+rand(3,1)*1i)*2-(1+1i);
R=r+s*p(a);


z2=exp(1i*R(1)*T)*c(1)+exp(1i*R(2)*T)*c(2)+exp(1i*R(3)*T)*c(3);
x=real(z2);
y=imag(z2);
M=max(abs(z2));
m=min(abs(z2));
subplot(3,3,k);
plot(x,y,'r-');axis equal;
end
