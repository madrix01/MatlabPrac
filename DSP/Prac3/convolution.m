clc;
clear all;
close all;

a = 0:6;
x = (a./3);

b = -2:2;
h = ones(1, length(b));

disp('First sequence is');
disp(x);

disp('Second sequence is');
disp(h);

n1 = length(x);
n2 = length(h);

N = n1 + n2 - 1;

x = [x, zeros(1, N-n1)];
h = [h, zeros(1, N-n2)];
y = zeros(1, N);


for n = 1:N
    for k = 1:n
        y(n) = y(n) + x(k)*h(n-k+1);
    end
end

disp('Convolution without inbuild function is');
disp(y);

ny = 0:N-1;

subplot(3, 1, 1);
stem(ny, x, 'b', 'LineWidth', 1.5);
xlabel('n ----> ');
ylabel('x(n) ----> ');
title('X');
grid on;

subplot(3, 1, 2);
stem(ny, h, 'g', 'LineWidth', 1.5);
xlabel('n ----> ');
ylabel('h(n) ----> ');
title('H');
grid on;

subplot(3, 1, 3);
stem(ny, y, 'r', 'LineWidth', 1.5);
xlabel('n ----> ');
ylabel('Y(n) ----> ');
title('Convolution of X and H');
grid on;

