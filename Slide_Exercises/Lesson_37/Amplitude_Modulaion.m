 %Cho tín hiệu tương tự được mô tả bởi công thức sau:
 %     s(t)=2cos(20t + /4)+cos(30t );
 %    Viết chương trình thực hiện điều chế biên độ tín hiệu bằng sóng mang
 %    fc = 300 Hz. Vẽ dạng sóng tín hiệu bản tin ban đầu và tín hiệu được
 %    điều chế.
 %   Giải điều chế tín hiệu trên bằng kỹ thuật phù hợp và vẽ dạng sóng tí  
 %   hiệu sau khi được giải điều chế.
 
 clc;
close all;
clear all;

m = 0.5;
Am = 1;
phi = pi/4;
fa = 10;
Ta=1/fa;
t=0:0.001:1;
sm= 2.*Am*cos(2*pi*fa*t + phi ) + Am*cos(3*pi*fa*t);
subplot(3,1,1)
plot(t,sm)
title('Tin hieu dieu che')

% Carrier signal 
 Ac = Am/m;
 fc =10*fa;
 Tc = 1/fc;
 sc  = 2*Ac*cos(2*pi*fc*t) + Ac*cos(3*pi*fc*t);
 subplot(3,1,2)
 plot(t,sc)
grid on;
 title('tin hieu song mang')
 
 %AM modulation
  y= (1+m*sm).*sc;
  subplot(3,1,3)
  plot(t,y);
  title('tin hieu dieu che bien do')
  grid on;
