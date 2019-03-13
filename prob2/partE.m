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
    s = round(s + d, 5, 'significant');
end
s = round(1 / s, 5, 'significant');

relError = abs((s - exp(-5.5)) / exp(-5.5));