% truncated variance
clear;
clc;
sigma  = [1 2 3 4 5];
t = 10;%assign a value for t
for i = 1:1:length(sigma)
    sigma_T(i) = fnc1(t,sigma(i));
end

hold on;
plot(sigma.^2,sigma_T.^2,'r-o');
plot(sigma.^2,sigma.^2,'b-x');
hold off;
xlabel('\sigma^2');
legend('\sigma_T^2','\sigma^2')