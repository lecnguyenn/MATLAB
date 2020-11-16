
d= [1 0 1 0 1];
R=5;
Ns =100*R;
Tb = 1/R;
Nb = length(d); % so luong bit
TimeWindow = Nb*Tb;
ts=TimeWindow/(Ns-1);
t= 0:ts:TimeWindow;
y= zeros(size(t));
code=[];
for k =1:Ns
    n=fix(t(k)/Tb)+1;
    if n>= Nb
        n= Nb;
    end
    if mod(t(k),Tb) <=Tb/2
        y(k) = d(n);
        code(n) = d(n);
    else
        y(k)= 0
    end
end
subplot(2,2,1)
plot(t,y)
xlabel('t');
ylabel('y');
subplot(2,2,2)
Y= fft(d);
stem(Y)
xlabel('f');
ylabel('Y');
subplot(2,2,3);plot(,abs(Y));title('Do lon');grid;
subplot(4,2,4);plot(t,angle(Y)); title('Pha'); grid;


