clc;
clear;

x = 5.5;
e = 1;
for ii = 1:30
    e_old = e;
    e = round(e_old * x, 5, 'significant');
    
    fprintf('$n = %d$, $5.5^{%d} = (5.5 \\cdot 5.5^{%d}) = (5.5 \\cdot %1.5e) = %1.5e$\n\n', ii, ii, ii-1, e_old, e);
end