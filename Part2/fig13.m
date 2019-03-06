clear all;
close all;
clc;


t=[0:999]*2*pi/1000;
t=[0:0.001:2*pi];
gain=2;
x2=0;

x=0;
for n=-99:5:99
  c=sin(2*pi/5*n)/n^2;
  x=x+gain*exp(-1i*t*n*2)*c*-1i;
end
for n=-93:10:99
  s1=5/(n^2-5^2)*(exp(-3*pi*1i*n/5)-exp(-2*pi*1i*n/5))*0.5;
  s1=s1+5/(n^2-25^2)*(exp(-3*pi*1i*n/5)-exp(-2*pi*1i*n/5))*0.7;
  s2=1i*5/(n^2-10^2)*(exp(-3*pi*1i*n/5)-exp(-2*pi*1i*n/5))*0.3;
  s=s1+s2;
  x2=x2+exp(-1i*t*n)*s;
end

%figure;plot(real(x2));
%figure;plot(imag(x2));


X=x+x2;
figure;plot(real(X),imag(X),'ro');axis square;hold on;
plot(real(x),imag(x),'g.');
plot(real(X(1:length(t)/5)),imag(X(1:length(t)/5)),'bo');hold off
title('p11m',"fontsize", 16)

x2=0;
for n=-93:10:99
  s1=5/(n^2-5^2)*(exp(-3*pi*1i*n/5)-exp(-2*pi*1i*n/5))*0.7;
  s2=-5/(n^2-25^2)*(exp(-3*pi*1i*n/5)-exp(-2*pi*1i*n/5))*0.5;
  %s2=1i*5/(n^2-10^2)*(exp(-3*pi*1i*n/5)-exp(-2*pi*1i*n/5))*0.3;
  s=s1+s2;
  x2=x2+exp(-1i*t*n)*s;
end
X=x+x2;
figure;plot(real(X),imag(X),'ro');axis square;hold on;
plot(real(x),imag(x),'g.');
plot(real(X(1:length(t)/5)),imag(X(1:length(t)/5)),'bo');hold off;title('p2mm',"fontsize", 16)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x=0;
for n=-99:5:99
  c=sin(2*pi/5*n)/n^2;
  x=x+gain*exp(-1i*t*n)*c*-1i;
end
x2=0;
for n=-99:5:99
  s1=-5i/(n^2-5^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.52;%oe
  s3=-5i/(n^2-10^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.3; %oo 
  s0=-5/(n^2-20^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.7; %oo
  s=s1+s3+s0;
  x2=x2+exp(-1i*t*n)*s;
end
X=x+x2;
figure;plot(real(X),imag(X),'ro');axis square;hold on;
plot(real(x),imag(x),'g.');
plot(real(X(1:length(t)/5)),imag(X(1:length(t)/5)),'bo');hold off;title('p2',"fontsize", 16)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


x2=0;
for n=-99:5:99
  s2=1i*(-1*n*1i/(n^2-10^2)+1i/n)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.3;%ee
  s4=1i*(-1*n*1i/(n^2-5^2)+1i/n)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.2;%eo
  s5=1i*(-1*n*1i/(n^2-25^2)+1i/n)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.2;%eo
  s0=-1/(n^2-10^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.5; %oo
  s=(s4-s5)/3+s2/2+s0*3;
  x2=x2+gain*exp(-1i*t*n)*s;
end

X=x+x2;
figure;plot(real(X),imag(X),'ro');axis square;hold on;
plot(real(x),imag(x),'g.');
plot(real(X(1:length(t)/5)),imag(X(1:length(t)/5)),'bo');hold off;title('p1m1',"fontsize", 16)

x2=0;
for n=-99:5:99
  s2=1i*(-1*n*1i/(n^2-10^2)+1i/n)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.3;%ee
  s3=-1i/(n^2-40^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.3; %oo
  s0=-3/(n^2-10^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.5; %oo
  s=s2+5*s3+3*s0;
  x2=x2+exp(-1i*t*n)*s;
end

X=x+x2;
figure;plot(real(X),imag(X),'ro');axis square;hold on;
plot(real(x),imag(x),'g.');
plot(real(X(1:length(t)/5)),imag(X(1:length(t)/5)),'bo');hold off;title('p1',"fontsize", 16)

x2=0;
for n=-99:5:99
  s1=-1i/(n^2-5^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.82;%oe
  s1=s1+-1i/(n^2-35^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.62;%oe
  
  s0=-1/(n^2-10^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.7; %oo
  s=s1*5+5*s0;
  x2=x2+exp(-1i*t*n)*s;
end

X=x+x2;
figure;plot(real(X),imag(X),'ro');axis square;hold on;
plot(real(x),imag(x),'g.');
plot(real(X(1:length(t)/5)),imag(X(1:length(t)/5)),'bo');hold off;title('p2mg',"fontsize", 16)

x2=0;
for n=-99:5:99
  s1=-1i/(n^2-5^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.92;%oe
  s1=s1-1i/(n^2-15^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.52;
  s4=1i*(-1*n*1i/(n^2-5^2)+1i/n)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.12;%eo
  s5=1i*(-1*n*1i/(n^2-25^2)+1i/n)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.12;%eo
  s0=-1/(n^2-20^2)*(exp(-6*pi*1i*n/5)-exp(-4*pi*1i*n/5))*0.5; %oo
  s=s1*2+(s4-s5)*1+8*s0;
  x2=x2+exp(-1i*t*n)*s;
end

X=x+x2;
figure;plot(real(X),imag(X),'ro');axis square;hold on;
plot(real(x),imag(x),'g.');
plot(real(X(1:length(t)/5)),imag(X(1:length(t)/5)),'bo');hold off;title('p11g',"fontsize", 16)