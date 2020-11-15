f = 65;
T=1/f;
t= 0:T/1000:3*T
y = exp(-0.5*t).*cos(2*pi*65*t);
plot(t,y)
hold on 
t = 0:T/2:3*T
y= exp(-0.5*t).*cos(2*pi*65*t);
plot(t,y,'ro')
xlabel('thoi gian')
ylabel('Gia tri')
title('do thi ham exp(-0.5*t).*cos(2*pi*65*t)')
