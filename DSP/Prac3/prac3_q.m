x = [1 2 3 4 5 6];
h = [1 2 3 4];

m = length(x);
n = length(h);
N = max(m, n);
z = cconv(x, h, N);
disp(z);
