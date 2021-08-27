clc;
clear all;
close all;

n = 0:7;
N = 8;
x = cos(2*pi*n./N);
h = sin(2*pi*n./N);
disp("First sequence is : ");
disp(x);

disp("Second sequence is : ");
disp(h);

y = zeros(1, N);

for n = 1:N
    for m = 1:N
        z = mod(n-m, N);
        y(n) = y(n) + x(m)*h(z+1);
    end
end

disp('Convolution without inbuild function : ')
disp(y)

ny = 0:N-1;
subplot(3, 1, 1);
stem(ny, x, 'g', 'LineWidth', 1.5);
xlabel('n'); ylabel('x(n)'); title('X');

subplot(3, 1, 2);
stem(ny, h, 'b', 'LineWidth', 1.5);
xlabel('n'); ylabel('h(n)'); title('H');

subplot(3, 1, 3);
stem(ny, y, 'r', 'LineWidth', 1.5);
xlabel('n'); ylabel('y(n)'); title('Circular convolution of X and H');