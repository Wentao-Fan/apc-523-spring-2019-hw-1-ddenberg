clc;
clear;

%Get Coefficients
n = 20;
syms x;

p = prod(x - (1:n));
p_expanded = expand(p);

c = double(flipud(coeffs(p_expanded).'));

clear n x p p_expanded;


w = @(x) polyval(c, x);

r = fzero(w, 21);

all_roots = roots(c);