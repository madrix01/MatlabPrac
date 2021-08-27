clc;
clear all;
close all;
% p = input('Enter probability');
p = [0.01 0.02 0.03 0.06 0.12 0.3 0.46];
p = sort(p, 'descend');
i = 1;


tempfinal = [];
sumarr = [];
w = length(p);
lengthp = (w);
b(i, :) = p;

while(length(p) > 2)
    tempsum = p(length(p)) + p(length(p)-1);
    sumarr = [sumarr, tempsum];
    p = [p(1:length(p)-2), tempsum]; % adding the tie to the array
    p = sort(p, 'descend'); % sort after tieing 
    i = i + 1; 
    b(i, :) = [p, zeros(1, w-length(p))]; % add remaining zeros
    w1 = 0;
    lengthp = [lengthp, length(p)];
    
    for temp=1:length(p)
        if p(temp) == tempsum;
            w1 = temp;
        end
    end
    tempfinal = [w1, tempfinal];
    disp(p);
end


sizeb(1:2) = size(b);
tempdisplay = 0;
temp2 = [];

for i=1:sizeb(2)
    temp2 = [temp2, b(1, i)];
end
sumarr = [0, sumarr];
var = [];
e = 1;

for ifinal = 1:sizeb(2)
end
