clc;
clear;

n = 20;
syms x;

p = prod(x - (1:n));
p_expanded = expand(p);

c = flipud(coeffs(p_expanded).');