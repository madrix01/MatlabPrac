clc;
clear all;
x = input("Enter the probability of symbols > ");
[code1, avgLength] = ShannonFano(x);

for i = 1:length(x)
   I(i) = -x(i)*log2(x(i));
end


H = sum(I);
fprintf('\n');
for i = 1:length(x)
    xi = x(i);
    codei = code1(i);
    fprintf('%f --> ', xi);
    disp(code1(i));
end

fprintf('\n Entropy= %f', H);
fprintf('\n Average codeword length : %f',  avgLength);
e = H/avgLength;
fprintf('\n Efficiency : %f \n', e);

%% Shannon fano coding
function [code1, avgLength] = ShannonFano(x)
set(0, 'RecursionLimit', 1e4);

if (sum(x >= 0)~=length(x)) % check not equal
    disp('Length not same');
end
x = x/sum(x);

if (length(x) > 2)
    [xdes, idx] = sort(x, 'descend');
    qsum = (2*cumsum(xdes))-1;
    [~, idx1] = min(abs(qsum));
    if((idx1 > 1) && (idx1 < length(xdes) -1))
        q1 = xdes(1:idx1);
        q2 = xdes((idx1 +1 ): length(xdes));
        oldCode1 = ShannonFano(q1);
        oldCode2 = ShannonFano(q2);
        newCode = [strcat('0', oldCode1) strcat('1', oldCode2)];
    elseif(idx1 == 1)
        q1 = xdes(1);
        q2 = xdes(2:length(xdes));
        oldCode1 = ShannonFano(q1);
        oldCode2 = ShannonFano(q2);
        newCode = [oldCode1 strcat('1', oldCode2)];
    else
        q1 = xdes(1:length(xdes)-1);
        q2 = xdes(length(xdes));
        oldCode1 = ShannonFano(q1);
        oldCode2 = ShannonFano(q2);
        newCode = [strcat('0', oldCode1), oldCode2];
    end
    code1(idx) = newCode;
elseif(length(x) == 2)
    code1 = {'0', '1'};
else
    code1 = {'0'};
end
length1 = cellfun(@length, code1);
avgLength = sum(length1.*x);
end