
n1=-8:8;
% x[n]=u[n]-u[n-4]
x=((n1)>=0)-((n1-4)>=0);
subplot(3,1,1)
hndl(1)=stem(n1,x);grid
title('x[n]')

n2=-5:5;
h=((1-n2/4).*(n2>=0).*(n2<=4));
subplot(3,1,2)
hndl(2)=stem(n2,h);grid
title('h[n]')

n=n1(1)+n2(1):n1(end)+n2(end);

y=conv(x,h);
disp(y);
subplot(3,1,3)
hndl(3)=stem(n,y);grid
xlim([n(1) n(end)])
title('h[n]*x[n]')
set(hndl,'LineWidth',2)
