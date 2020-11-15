

function [x1,x2] = ptb2(a,b,c)
delta = b*b -4*a*c;
if delta < 0 
    x1=[];
    x2=[];
elseif delta == 0
      x1= -b/2*a;
      x2= -b/2*a;
     
else 
       x1 = (-b +sqrt(delta))/2*a;
       x2 = (-b -sqrt(delta))/2*a;
 end
 
if x1 <= 0 
    fprintf('%d',x1)
elseif x2<=0
    fprintf('%d',x2)
elseif x1 >0 && x2 >0
    r;
end