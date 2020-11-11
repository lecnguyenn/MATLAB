Rb =10^6; %Toc do bit
Tb=1/Rb; %chu ki bit
Fs = 32*Rb; %tan so lay mau 
nbit = 10; %10 chu ki
len = Fs/Rb*nbit; % Tong so mau trong 10 chu ki
time = 0:(1/Fs):(len-1)/Fs; %vecto thoi gian
x = randint(nbit, 1); %chuoi du lieu nhi phan dau vao
code= []; % khoi tao vecto tin hieu
for k =1:nbit
    if x(k,1) == 0
        sig = -1.*ones(1,32);
    else
        sig = ones(1,32);
    end
    code = [code sig];
end
plot(time,code);
axis([0 len/Fs -2 2]);
title('NRZ');
xlabel('Time');ylabel('Amplitude');
