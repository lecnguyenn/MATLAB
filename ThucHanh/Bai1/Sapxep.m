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

%giai he phuong trinh tuyen tinh

% 5x -2y -z = 6
% 2x +2y = z+1
% 2z - 1 = y +x

A= [1 -2 -1 ;2 2 -1;-1 -1 2]
B= [6;1 ;1]
 result = inv(A) *B
