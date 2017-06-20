clear all;
close all;
clc;
%% pineapple

Fold=5;
N=6000;
t=2*pi*[0:N-1]'/N;

k=1;

e=exp(1i*Fold*t)-1i/4*exp(1i*-2*Fold*t);
e=e.*exp(1i*k*t);
x=real(e);
y=imag(e);
figure;plot(x,y,'r.');title('only x-y')
z=sin(Fold*t)*2+3;
figure;
hold on
plot3(x(1:N/Fold),y(1:N/Fold),z(1:N/Fold),'r.')
plot3(x(1*N/Fold+1:2*N/Fold),y(1*N/Fold+1:2*N/Fold),z(1*N/Fold+1:2*N/Fold),'g.')
plot3(x(2*N/Fold+1:3*N/Fold),y(2*N/Fold+1:3*N/Fold),z(2*N/Fold+1:3*N/Fold),'b.')
plot3(x(3*N/Fold+1:4*N/Fold),y(3*N/Fold+1:4*N/Fold),z(3*N/Fold+1:4*N/Fold),'y.')
plot3(x(4*N/Fold+1:5*N/Fold),y(4*N/Fold+1:5*N/Fold),z(4*N/Fold+1:5*N/Fold),'m.')
hold off

%% non-z symmetry
N1=1;
N2=3;
N3=2;
c1=1;
c2=0.2;
c3=-0.4;
x=cos(N1*t)*c1+cos(N2*t)*c2+sin(N3*t)*c3;
y=cos(N1*t-2*pi/3*N1)*c1+cos(N2*t-2*pi/3*N2)*c2+sin(N3*t-2*pi/3*N3)*c3;
z=-cos(N1*t+2*pi/3*N1)*c1-cos(N2*t+2*pi/3*N2)*c2-sin(N3*t+2*pi/3*N3)*c3;
figure;
hold on;
plot3(x(1:2000),y(1:2000),z(1:2000),'b.');
plot3(x(2001:4000),y(2001:4000),z(2001:4000),'r.');
plot3(x(4001:6000),y(4001:6000),z(4001:6000),'g.');
hold off;