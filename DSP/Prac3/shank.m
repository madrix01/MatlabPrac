clc;
clear all;
close all;

%using function
u=[1 2 2 1];
v=[1 9 0 1 4];
m=length(u);
n=length(v);
l=n+m-1;
N=max(m,n);
y=conv(u,v);        %linear convolution
z=cconv(u,v,N);     %circular convolution

%without using function
%linear convolution
U=[u, zeros(1,n)];
V=[v, zeros(1,m)];
Y=zeros(1,l);
for i=1:l
    for j=1:N
        if ((i-j+1)>0 && (i-j+1)<=N)
            Y(i)=Y(i)+U(j).*V(i-j+1);
        end
    end
end

%circular convolution
Z = zeros(1,N);
for i=0:N-1
    for j=0:N-1
        k = mod(i - j, N);
        Z(i + 1) = Z(i + 1) + U(j + 1)*V(k + 1);
    end
end

subplot(3,2,1)
stem(u)
title('u U19EC014')

subplot(3,2,2)
stem(v)
title('v U19EC014')

subplot(3,2,3)
stem(y)
title('conv')

subplot(3,2,4)
stem(z)
title('cconv')

subplot(3,2,5)
stem(Y)
title('Linear Convolution')

subplot(3,2,6)
stem(Z)
title('Circular Convolution')