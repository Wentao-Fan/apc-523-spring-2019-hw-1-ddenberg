clc;
clear;

f(1) = 1;
x = 5.5;
e(1) = 1;
d(1) = 1;
for ii = 1:30
    e(ii+1) = round(e(ii) * x, 5, 'significant');
    f(ii+1) = round(ii * f(ii), 5, 'significant');
    d(ii+1) = round(e(ii+1) / f(ii+1), 5, 'significant');
end

%Sum Right to Left
s = d(31);
for ii = 30:-1:1
    s = round(d(ii) + s, 5, 'significant');
end