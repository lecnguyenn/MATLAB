clc;
clear all;
close all;
%a
a  = randi(5,5) + i.*rand(5,5);
b =  3.*ones(5,5);
%b
for h = 1:5
    for k =1:5
        if a(h,k) > b(h,k)
            a(h,k) = i;
        end
    end
end
%c
c=[];
for i=1:size(a,1)
 c=[c a(i,:)];
end
%d
for g = 1:length(c)
    if real(c(g)) == 0
        fprintf('%d ', g )
    end
end
