clc;
clear;

interval = linspace(1, 10, 1001);
x = linspace(1, 10, 1001);

iter = 52;
for ii = 1:iter
    x = sqrt(x);
end

for ii = 1:iter
    x = x.^2;
end

err = interval - x;

plot(interval, x);
hold on;

h = refline(1,0);
set(h, 'LineStyle', '--', 'Color', 'k');