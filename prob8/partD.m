clc;
clear;

y_N = 0;
N = 32;
k = 20;

y = y_N;
for ii = N-1:-1:k
    y = (exp(1) - y) / (ii + 1);
end

fun = @(x) x.^(k) .* exp(x);
num_int = integral(fun, 0, 1);