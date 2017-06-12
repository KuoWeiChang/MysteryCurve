clear all;
close all;
clc;

N=700;
t=[0:N-1]'/N*2*pi;
L=3; % 3 components mystery curve without fold
h=figure;
for p=1:9
  a=(rand(L,1)+rand(L,1)*1i)*2-(1+1i); % amp
  f=floor(rand(L,1)*60)-30; % freq
  z=0;
  for k=1:L
    z=z+a(k)*exp(1i*f(k)*t);
  end
  x=real(z);
  y=imag(z);
  subplot(3,3,p);
  plot(x,y,'r-');
  axis square
end



