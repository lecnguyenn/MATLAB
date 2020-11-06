function [value] = midpoint(a,b ,N )
mid = (b-a)/N;
tp= 0;
value =0;
for k=1:N
    x = a+ (k-1/2)*mid;
    f=x.*exp(x);
    value = value+f;
end
value = value*mid;
