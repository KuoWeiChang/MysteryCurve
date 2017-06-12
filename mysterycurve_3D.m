%% 3D mystery curve
clear all;
close all;
clc;
pkg load signal;
N=6000;
t=[0:N-1]'*2*pi/N;
x=cos(t)+cos(11*t)/3-cos(6*t)/2;
y=sin(t)+sin(11*t)/3-sin(6*t)/2;
figure;plot(x,y,'ro');axis square % 2D


z=cos(5*t)+1;
figure;plot3(x,y,z,'ro')
N1=1;
N2=3;
N3=2;
c1=1;
c2=0.2;
c3=-0.4;
x=cos(N1*t)*c1+cos(N2*t)*c2+sin(N3*t)*c3;
y=cos(N1*t-2*pi/3*N1)*c1+cos(N2*t-2*pi/3*N2)*c2+sin(N3*t-2*pi/3*N3)*c3;
z=-cos(N1*t+2*pi/3*N1)*c1-cos(N2*t+2*pi/3*N2)*c2-sin(N3*t+2*pi/3*N3)*c3;
figure;plot3(x,y,z,'ro');
hold on;
plot3(x(1:2000),y(1:2000),z(1:2000),'bo');
plot3(x(2001:4000),y(2001:4000),z(2001:4000),'ro');
plot3(x(4001:6000),y(4001:6000),z(4001:6000),'go');
hold off;






