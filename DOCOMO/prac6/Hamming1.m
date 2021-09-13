clc;clear all;close all;

n = 7;
k = 4;
msg = input("Enter message of length 4 > ");
H = [1 0 1 1 1 0 0; 1 1 0 1 0 1 0; 0 1 1 1 0 0 1];
P = H(1:n-k, 1:k);
G = [ eye(k) P' ];
code = mod(msg*G,2);
disp(code);