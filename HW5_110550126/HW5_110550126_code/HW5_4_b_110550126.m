clear;
clc;
n = 15;
h = pi/n;
A = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
     1 h^2/4-2 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
     0 1 h^2/4-2 1 0 0 0 0 0 0 0 0 0 0 0 0;
     0 0 1 h^2/4-2 1 0 0 0 0 0 0 0 0 0 0 0;
     0 0 0 1 h^2/4-2 1 0 0 0 0 0 0 0 0 0 0;
     0 0 0 0 1 h^2/4-2 1 0 0 0 0 0 0 0 0 0;
     0 0 0 0 0 1 h^2/4-2 1 0 0 0 0 0 0 0 0;
     0 0 0 0 0 0 1 h^2/4-2 1 0 0 0 0 0 0 0;
     0 0 0 0 0 0 0 1 h^2/4-2 1 0 0 0 0 0 0;
     0 0 0 0 0 0 0 0 1 h^2/4-2 1 0 0 0 0 0;
     0 0 0 0 0 0 0 0 0 1 h^2/4-2 1 0 0 0 0;
     0 0 0 0 0 0 0 0 0 0 1 h^2/4-2 1 0 0 0;
     0 0 0 0 0 0 0 0 0 0 0 1 h^2/4-2 1 0 0;
     0 0 0 0 0 0 0 0 0 0 0 0 1 h^2/4-2 1 0;
     0 0 0 0 0 0 0 0 0 0 0 0 0 1 h^2/4-2 1;
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
b = [0; 0; 0; 0; 0; 0; 0; 0; 0; 0;0;0;0;0;0; 2];
angle = linspace(0,pi,n+1);
y = A\b;
dy = [];
for i = 2:n-1
    dy(i-1) = (y(i+1) - y(i-1))/(2*pi/n);
end
true = [];
for i = 2:n-1
    true(i-1) = cos(angle(i)/2);
end
dy
true
error = abs(dy-true)
error_rate = error./true
max_error_rate = max(error_rate)
