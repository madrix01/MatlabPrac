clc;
close all;
clear;

I = imread('cute.jpg');
I1 = rgb2gray(I);
e = entropy(I1);
imshow(I1);
figure
imshow(I);
disp(e);
