clc;
clear;

n = 1;
for ii = 1:30
    n_old = n;
    n = round(ii * n_old, 5, 'significant');
    fprintf('$n = %d$, $%d! = (%d \\cdot %d!) = (%d \\cdot %1.5e) = %1.5e$\n\n', ii, ii, ii, ii-1, ii, n_old, n);
end