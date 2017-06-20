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







