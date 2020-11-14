a= [5 4+i 5 -4 1;3-2i 5 3-i  -2 -1;5 1 3-i -10 -1;5-2i 1 5-i -2 -1;3-5i 1 3-i -5i -1];
b = [9;5;5i-2;7i;7i-5];
d = inv(a)*b;
n = length(d);
for h = 1:n
    for k= 1:n
    if c(h) > d(k)
        temp = d(h);
        d(h) = d(k);
        d(k) = temp;
    end
    end
end
d
%d

for q= 1: n
    max = d(1);
   if max <d(q)
        max = d(q);
    end
end
max

