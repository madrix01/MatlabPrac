clc;
close all;


n = input('Number of symbols : ');
sym = zeros(1, n);
sm = 0;
for i = 1:n
    tex = sprintf("Enter symbol %d : ", i);
    sym(i) = input(tex);
    sm = sm + sym(i);
end

if sm > 1
    disp("Sum of probabilities greater than 1");
else
    H = 0;
    for i = 1:n
        H = H + sym(i)*log2(sym(i));
    end

    disp(-1*H);
end