f = 65;
T=1/f;
t= 0:T/1000:3*T
y = exp(-0.5*t).*cos(2*pi*65*t);
