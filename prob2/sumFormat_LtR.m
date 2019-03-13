clc;
clear;

f = 1;
x = 5.5;
e = 1;
s = 1;
%Left to Right
for ii = 1:30
    e = round(e * x, 5, 'significant');
    f = round(ii * f, 5, 'significant');
    d = round(e / f, 5, 'significant');
    s_old = s;
    s = round(s + d, 5, 'significant');
    
    fprintf('$n = %d$, $%1.5e + %1.5e = %1.5e$\n\n', ii, s_old, d, s);
end