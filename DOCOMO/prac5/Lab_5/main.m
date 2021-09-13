clc;
clear all;
p =input('Enter the probability of symbols \n\n'); 
[code1, average_length] = ShannonFano(p);

%% Determining Entropy

for i=1:length(p)
    I(i)=-p(i)*log2(p(i));
end
H=sum(I);
fprintf('\n');
disp(code1);
fprintf('\n Entropy= %f',H);
fprintf('\n Average codeword length= %f',average_length);
%% Determining efficiency of codes

e=H/average_length;
fprintf('\n Efficiency=%f \n ',e);