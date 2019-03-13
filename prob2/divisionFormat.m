clc;
clear;

f = 1;
x = 5.5;
e = 1;
for ii = 1:30
    e = round(e * x, 5, 'significant');
    f = round(ii * f, 5, 'significant');
    d = round(e / f, 5, 'significant');
    
    fprintf('$n = %d$, ($5.5^{%d} / %d!) = (%1.5e / %1.5e) = %1.5e$\n\n', ii, ii, ii, e, f, d);
end