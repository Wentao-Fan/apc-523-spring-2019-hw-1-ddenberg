clc;
clear;

f(1) = 1;
x = -5.5;
e(1) = 1;
d(1) = 1;
for ii = 1:30
    e(ii+1) = round(e(ii) * x, 5, 'significant');
    f(ii+1) = round(ii * f(ii), 5, 'significant');
    d(ii+1) = round(e(ii+1) / f(ii+1), 5, 'significant');
end

%Left to Right
s_LtR = d(1);
fprintf('Summing Left to Right\n');
fprintf('n = 0, sum = %1.5e\n', s_LtR);
for ii = 2:31
    s_LtR = round(d(ii) + s_LtR, 5, 'significant');
    fprintf('n = %d, sum = %1.5e\n', ii-1, s_LtR);
end
relError_LtR = abs((s_LtR - exp(-5.5))/ exp(-5.5));

%Sum Right to Left
s_RtL = d(31);
fprintf('Summing Right to Left\n');
fprintf('n = 0, sum = %1.5e\n', s_RtL);
for ii = 30:-1:1
    s_RtL = round(d(ii) + s_RtL, 5, 'significant');
    fprintf('n = %d, sum = %1.5e\n', ii-1, s_RtL);
end
relError_RtL = abs((s_RtL - exp(-5.5))/ exp(-5.5));

%Sum Left to Right on Positive and Negative values separately
s_posLtR = d(1);
s_negLtR = d(2);
fprintf('Summing Left to Right (positive and negative separately)\n');
fprintf('n = 0 (pos)\t sum = %1.5e\t n = 1 (neg)\t sum = %1.5e\n', s_posLtR, s_negLtR);
for ii = 3:2:31
    s_posLtR = round(d(ii) + s_posLtR, 5, 'significant');
    if ii <= 30
        s_negLtR = round(d(ii+1) + s_negLtR, 5, 'significant');
    end
    fprintf('n = %d\t sum = %1.5e\t n = %d\t sum = %1.5e\n', ii-1, s_posLtR, ii, s_negLtR);
end
s_LtR_total = round(s_posLtR + s_negLtR, 5, 'significant');
relError_LtR_total = abs((s_LtR_total - exp(-5.5))/ exp(-5.5));

%Sum Right to Left on Positive and Negative values separately
s_posRtL = d(31);
s_negRtL = d(30);
fprintf('Summing Left to Right (positive and negative separately)\n');
fprintf('n = 31 (pos)\t sum = %1.5e\t n = 30 (neg)\t sum = %1.5e\n', s_posRtL, s_negRtL);
for ii = 29:-2:1
    s_posRtL = round(d(ii) + s_posRtL, 5, 'significant');
    if ii > 1
        s_negRtL = round(d(ii-1) + s_negRtL, 5, 'significant');
    end
    fprintf('n = %d\t sum = %1.5e\t n = %d\t sum = %1.5e\n', ii-1, s_posRtL, ii, s_negRtL);
end
s_RtL_total = round(s_posRtL + s_negRtL, 5, 'significant');
relError_RtL_total = abs((s_RtL_total - exp(-5.5))/ exp(-5.5));