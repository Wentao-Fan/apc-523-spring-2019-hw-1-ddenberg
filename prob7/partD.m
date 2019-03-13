clc;
clear;

%Get Coefficients
n = 20;
syms x;

p = prod(x - (1:n));
p_expanded = expand(p);

c = double(flipud(coeffs(p_expanded).'));

clear n x p p_expanded;

delta = [0, -2^(-23)];
for ii = 1:length(delta)
    c_delta = c;
    c_delta(2) = c_delta(2) + delta(ii);
    
    w = @(x) polyval(c_delta, x);

    r(ii) = fzero(w, 21);
    
    all_roots(:,ii) = roots(c_delta);
end