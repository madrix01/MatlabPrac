% Channel capacity 
clc;
clear all;
close all;

pV = 0.001:0.001:1;
C = zeros(length(pV),1);
for i = 1:length(pV)
    C(i) = 1 + pV(i)*log2(pV(i)) + (1-pV(i))*log2(1-pV(i));
end
    
plot(pV ,C, 'r');
xlabel('Error probability');
ylabel('Channel capacity');
title('Channel capacity vs. error probability U19EC055');
grid on;
