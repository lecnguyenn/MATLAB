%sap xep mang tuy y


function y = Sort_array(x)
n = length(x);
if n<2
    y=x;
    return;
end
for i=1:n-1
    if x(i) < x(i+1)
        temp = x(i);
        x(i) = x(i+1);
        x(i+1) = temp;
    end
end 
y=Sort_array(x(1:n-1));
y = [y x(n)];
end
