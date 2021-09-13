clc;
clear
close all;

y = [6 9 4 2 0 4 2 0];
n = length(y);
p = nextpow2(n);
z = zeros(1,2^p-n);
x = [y z];
x1 = bitrevorder(x);
n = length(x1);
s = log2(n);
w = exp(-2*1j*pi/n).^(0:(n/2-1));


for i = 1:s
    m = i;
    for k = 1:2^m:n
        for l = 0:2^(m-1)-1
            a = x1(k+l);
            b = x1(k + l + 2^(m-1))*w(l*n/(2^m)+1);
            x1(k+l) = a+b;
            x1(k+l+2^(m-1)) = a-b;
        end
    end
end

x2 = fft(x);

x1 = (round(x1*100))/100;
x2 = (round(x2*100))/100;
ch = isequal(x1,x2);

disp("Ch")
disp(ch);
disp("DIT")
disp(x1);
disp("DFT")
disp(x2);



t = 1:1:n;
subplot(3, 1, 1);
stem(t, y)
title("U19EC055 Input")
xlabel("n");
ylabel("Amplitude")


subplot(3, 1, 2);
stem(t, x1);
title("U19EC055 DIT")
xlabel("n");
ylabel("Amplitude")

subplot(3, 1, 3);
stem(t, x2);
title("U19EC055 DFT")
xlabel("n");
ylabel("Amplitude")
