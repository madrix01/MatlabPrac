clc;
clear all;
close all;

n1 = -2:1:6;
x1 = [4 2 0 6 9 4 2 0 1];


n2 = -5:1:3;
x2 = [-4 -2 -1 -4 -2 -0 6 9 1];

n = min(min(n1), min(n2)) : max(max(n1), max(n2));
y1 = zeros(1, length(n));
y2 = zeros(1, length(n));

y1((n >= min(n1))&(n <= max(n1))) = x1();
y2((n >= min(n2))&(n <= max(n2))) = x2();

x = y1 + y2;

subplot(3, 1, 1);
stem(n1, x1);
title('Signal 1');
xlabel('Time');
ylabel('Amplitude');
axis([-7 7 -7 10]);

subplot(3, 1, 2);
stem(n2, x2);
title('Signal 2');
xlabel('Time');
ylabel('Amplitude');
axis([-7 7 -7 10]);

subplot(3, 1, 3);
stem(n, x);
title('Signal 1 + signal 2 (Zero padding sum)')
xlabel('Time');
ylabel('Amplitude');
axis([-7 7 -7 20]);


