clear;
clc;
f = @(x) 0.79168 + (x-0.12)*(-0.01834)/0.12+(x-0.12)*(x-0.24)*(-0.01129)/0.12/0.12/2+(x-0.12)*(x-0.24)*(x-0.36)*0.00134/0.12/0.12/0.12/6;
temp = f(0.231);
fprintf("%.8f",temp);

