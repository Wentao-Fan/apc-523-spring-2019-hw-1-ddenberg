clc;
clear;

%Get Coefficients
n = 20;
syms x;

p = prod(x - (1:n));
p_expanded = expand(p);

c = double(flipud(coeffs(p_expanded).'));

clear n x p p_expanded;

delta = [1e-8, 1e-6, 1e-4, 1e-2];
for ii = 1:length(delta)
    c_delta = c;
    c_delta(1) = c_delta(1) + delta(ii);
    
    w = @(x) polyval(c_delta, x);

    r(ii) = fzero(w, 21);
    
    all_roots(:,ii) = roots(c_delta);
end