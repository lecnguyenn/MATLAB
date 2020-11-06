%Viết chương trình sử dụng thủ tục (procedure)
x0=2;
x1=1.5;
while (x0-x1)> 0.0001
    x0=x1;
    x1=(x0^2 +2)/(2*x0);
end
x1

%Chuyển thủ tục trên sang hàm (function)
function [value] = square(x0, x1, saiso)
while (X0-x1) > saiso
    x0 = x1;
    x1= (x0^2 + 2)/(2*x0);
 end
  value = x1;
