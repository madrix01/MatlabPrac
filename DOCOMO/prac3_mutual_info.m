% Mutual information
clc;
close all;
clear all;

px1 = input('Probability X1 > ');
px2 = input('Probability X2 > ');
p = input('Error probability > ');
PX = [px1 px2];
PYX = [1-p p; p 1-p];
PY = mtimes(PX, PYX);

HY = -PY(1)*log2(PY(1)) - PY(2)*log2(PY(2));
I = HY + p*log2(p) + (1-p)*log2(1-p);

disp('HY : ');
disp(HY);
disp('PY : ');
disp(PY);
disp('Mutual Information : ');
disp(I);
