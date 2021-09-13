clc;
clear all;
close all;

d = [1 0 1];
g1 = [1 0 1];
g2 = [1 1 1];
c1 = conv(d,g1);
c1 = mod(c1,2);
c2 = conv(d,g2);
c2 = mod(c2,2);
len=length(c1)+length(c2);
c=zeros(1,len);
for i=1:len
    if mod(i,2)==0
        c(i)=c2(i/2);
    else
        c(i)=c1((i+1)/2);
    end
end

disp('c1')
disp(c1);
disp('c2');
disp(c2);
disp('c');
disp(c);