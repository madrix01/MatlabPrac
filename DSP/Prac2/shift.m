clc;
clear all;
close all;
n =  0:5 ;
x = [0 6 9 4 2 0];
subplot(3, 2, 1);
stem(n, x);
xlabel('time sample');
ylabel('amplitude');
title('orginal signal');

m = n+2;
subplot(3, 2, 3);
stem(m, x);
xlabel('time sample');
ylabel('amplitude');
title('Positive shifted signal');

m = n-2;
subplot(3, 2, 5);
stem(m, x);
xlabel('time sample');
ylabel('amplitude');
title('Negative shifted signal');


t = 0:0.01:10;
y = 0.8*sin(2*pi*t/2);
subplot(3, 2, 2);
plot(t, y);
xlabel('time sample');
ylabel('amplitude');
title('Orignal continuous signal');
grid on;


t1 = t + 2;
subplot(3, 2, 4);
plot(t1, y);
xlabel('time sample');
ylabel('amplitude');
title('Positive shift continuous signal');
grid on;

t1 = t - 2;
subplot(3, 2, 6);
plot(t1, y);
xlabel('time sample');
ylabel('amplitude');
title('Negative shift continuous signal');
grid on;

