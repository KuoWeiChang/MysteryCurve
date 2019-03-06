clear all;
close all;
clc;
N=800;
graphics_toolkit('gnuplot')
num_folds=5;
n=[0:N-1]';
h=cos(2*pi/num_folds/2);
st=sin(2*pi/num_folds/2)+1i*h;
et=-sin(2*pi/num_folds/2)+1i*h;


R=1+sin(2*pi*n/N*2)*0.1+sin(2*pi*n/N)*0.09;
%R=1;
t=n/N*pi*2/num_folds+sin(2*pi*n/N)*0.5;

x1=R.*cos(t);
y1=R.*sin(t);


figure;plot(x1,y1,'ro')

z1=x1+1i*y1;
z1=(z1-z1(1))./(z1(end)-z1(1));%normalize to 0:1
zt=z1;


for p=1:7
inside=0;
switch (p)

case 1
  zt=[z1;1+z1]; %% pp
  tit='p1';
case 2
  zt=[z1;2-z1(end:-1:1)];%% pd
  tit='p2';
case 3
  zt=[z1;2-conj(z1(end:-1:1))];%% pq
  tit='p1m1';
case 4
  zt=[z1;1+conj(z1)];%pb
  tit='p11g';
case 5
  zt=[z1;2-conj(z1(end:-1:1))];%% pq
  zt=[zt;2+conj(zt)];%pb
  tit='p2mg';
case 6
  zt=[z1;1+z1]; %% pp
  inside=1;
  tit='p11m';
case 7
  zt=[z1;2-conj(z1(end:-1:1))];%% pq
  inside=1;
  tit='p2mm';
endswitch
%zt=[z1;1+z1]; %% pp
%zt=[z1;2-z1(end:-1:1)];%% pd
%zt=[z1;2-conj(z1(end:-1:1))];%% pq
%zt=[z1;1+conj(z1)];%pb



zf=st+(zt-zt(1))./(zt(end)-zt(1))*(et-st);


x=real(zf);
y=imag(zf);




w=exp(2*pi*1i/num_folds);

if inside;
  f=[x+1i*(2*h-y);w*(x+1i*y)];
else
  f=x+1i*y;  
end
%figure;plot(real(f),imag(f),'ro');
if inside
  long_x=[f;zeros((num_folds-1)*length(f),1)];
  long_X=fft(long_x);
  Z=zeros(length(long_X),1);
  Z(3:num_folds:end)=long_X(3:num_folds:end);
  z=ifft(Z)*num_folds;
  figure('Position',[0,0,800,800]);plot(real(z),imag(z),'ro');axis off
  hold on;
  plot(real(z(1:length(z)/num_folds)),imag(z(1:length(z)/num_folds)),'bo');
  plot(real(z(length(z)/num_folds+1:2*length(z)/num_folds)),imag(z(length(z)/num_folds+1:2*length(z)/num_folds)),'go');
  plot(real(z(length(z)/num_folds*2+1:3*length(z)/num_folds)),imag(z(2*length(z)/num_folds+1:3*length(z)/num_folds)),'ko');
    for k=1:num_folds
    c=length(z)/num_folds;
    %plot(real(z([1+(k-1)*c,k*c])),imag(z([1+(k-1)*c,k*c])),'g-','linewidth',8);
  end
  hold off;
  print(['basic_',tit,'.pdf'],'-dpdf','-S800,800','-r0')
else
  long_x=[f;zeros((num_folds-1)*length(f),1)];
  long_X=fft(long_x);
  Z=zeros(length(long_X),1);
  Z(2:num_folds:end)=long_X(2:num_folds:end);
  z=ifft(Z)*num_folds;
  figure('Position',[0,0,800,800]);plot(real(z),imag(z),'ro');axis off
  hold on;
  plot(real(z(1:length(z)/num_folds)),imag(z(1:length(z)/num_folds)),'bo');
 % plot(real(z(length(z)/num_folds+1:2*length(z)/num_folds)),imag(z(length(z)/num_folds+1:2*length(z)/num_folds)),'go');
  for k=1:num_folds
    c=length(z)/num_folds;
    plot(real(z([1+(k-1)*c,k*c])),imag(z([1+(k-1)*c,k*c])),'g-','linewidth',8);
  end
  
  
  
  
  hold off;
  print(['basic_',tit,'.pdf'],'-dpdf','-S800,800','-r0')
end

end