clc;
clear;

epsilon = 2^(-53);
k = 20;

f = factorial(k) / epsilon;

N = 1;
while factorial(N) < f
    N = N + 1;
end