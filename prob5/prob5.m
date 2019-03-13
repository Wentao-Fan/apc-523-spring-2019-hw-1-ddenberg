clc;
clear;

digits = 12;
n = 1;
seq_stop = 1;
seq = (1 + 1 / n) ^ n;
counter = 1;
fprintf('n = 10^%d, s = %1.11f\n', counter-1, seq);
while ~isequal(round(seq, digits, 'significant'), round(seq_stop, digits, 'significant'))
    counter = counter + 1;
    n_stop = n;
    n = n * 10;
    seq_stop = seq;
    seq = (1 + 1 / n) ^ n;
    
    if ~isequal(round(seq, digits, 'significant'), round(seq_stop, digits, 'significant'))
        fprintf('n = 10^%d, s = %1.11f\n', counter-1, seq);
    end
end