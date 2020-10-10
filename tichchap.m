clc;clear all;close all;
x=input('x(n)= ');
h=input('h(x)= ');
n1= length(x);
n2= length(h);
N =n1+n2-1;
x=[x,zeros(1,N-n1)];
h=[h,zeros(1,N-n2)];
y=zeros(1,N);
for n=1:N
    for k=1:n
        y(n)=y(n) + x(k)*h(n-k+1);
    end
end
disp(y);
ny=0:N-1;
subplot(3,1,1);
stem(ny,x);
subplot(3,1,2);
stem(ny,h);
subplot(3,1,3);
stem(ny,y);


        
