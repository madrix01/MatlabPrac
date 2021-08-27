clc;
clear all;
close all;
n =  0:5 ;
x = [0 6 9 4 2 0];
subplot(3, 2, 1);
stem(n, x);
xlabel('time sample');
ylabel('amplitude');
title('Orginal discrete signal');
axis([-3 10 0 15]);

m = n.*2;
subplot(3, 2, 3);
stem(m, x);
xlabel('time sample');
ylabel('amplitude');
title('Expanded signal');
axis([-3 10 0 15]);

m = n/2;
subplot(3, 2, 5);
stem(n/2, x);
xlabel('time sample');
ylabel('amplitude');
title('Compressed signal');
axis([-3 10 0 15]);

t = -5:0.01:5;
y = 0.8*sin(2*pi*t/2);
subplot(3, 2, 2);
plot(t, y);
xlabel('time sample');
ylabel('amplitude');
title('Orignal continuous signal');
grid on;
axis([-5 5 -1.5 1.5])

t1 = t.*2;
subplot(3, 2, 4);
plot(t1, y);
xlabel('time sample');
ylabel('amplitude');
title('Expanded signal');
grid on;
axis([-5 5 -1.5 1.5])

t1 = t/2;
subplot(3, 2, 6);
plot(t1, y);
xlabel('time sample');
ylabel('amplitude');
title('Compressed signal');
grid on;
axis([-5 5 -1.5 1.5])