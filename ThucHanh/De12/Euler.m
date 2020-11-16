clc;
clear all;
a = 1;
r = 1;
h = 0.25;
y0 = 0;
f = @(t,y) r - a*y;
y_ex = @(t) (y0 - r/a)*exp(-a*t) + r/a;
 
k1 = 0;     %Khoang thoi gian xet
k2 = 3;
t0 = k1;
n = (k2-k1)/h;
t(1) = t0;
y(1) = y0;
for i =1:n
    t(i+1) = t(i) + h;
    y1(i+1) = y(i)+h*f(t(i),y(i));
    y(i+1) = y(i) + h/2*(f(t(i),y(i)) + f(t(i+1),y1(i+1)));
end
 
plot(t,y,'ro-','linewidth',2);
hold on
plot(t,y_ex(t),'b*-','linewidth',2);
title('Euler bien doi','fontsize',15,'color','b');
legend('Nghiem theo Euler bien doi','Nghiem giai tich',2);
xlabel('t','fontsize',15,'color','b');
ylabel('Nghiem','fontsize',15,'color','b');
grid on
 
%So sanh cac nghiem voi nghiem giai tich
for i = 1:n
    if t(i) == 1
        yy1 = y(i);
    else
        if t(i) == 2
            yy2 = y(i);
        end
    end
end
 
delta1 = abs(y_ex(1) - yy1);
delta2 = abs(y_ex(2) - yy2);
disp ('Sai so so voi nghiem giai tich tai t = 1')
disp (delta1);
disp ('Sai so so voi nghiem giai tich tai t = 2')
disp (delta2)
