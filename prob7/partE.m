clc;
clear;

%Get Coefficients
n = 20;
syms x;

p = prod(x - (1:n));
p_expanded = expand(p);

c = double(flipud(coeffs(p_expanded).'));

clear x p p_expanded;

c_deriv = polyder(c).';

roots = [14,16,17,20];
% roots = (1:20);

cond_n = zeros(length(roots), 1);
for ii = 1:length(roots)    
    w_prime = @(x) polyval(c_deriv, x);
    
    
    for jj = 1:length(c)
        cond_n(ii) = cond_n(ii) + abs(c(jj) * roots(ii)^((n-jj+1)-1)) / abs(w_prime(roots(ii)));
    end
end