% %   discrete truncated density function
% parameter : sigma, Ts : uniformly spaced instants Ts, tau: random
% variables
clc;
clear;
sigma = [2,3,5];
Ts = 1;% assign Ts value,truncated interval
tau = -10:1:10;
for j = 1:1:length(sigma)
    for i = 1:1:length(tau)
        fd(j,i) = DisGauTru(sigma(j),Ts,tau(i));
    end
end
 
% mu = 0;
% sigma = 5;
% x = -40:0.01:40;
% fx = normpdf(x,mu,sigma);
% 
% figure;
% hold on;
% plot(tau,fd(3,:),'g-o');
% plot(fx,'r-o')
% hold off;

figure;
hold on;
plot(tau,fd(1,:),'k-o');
plot(tau,fd(2,:),'r-o');
plot(tau,fd(3,:),'g-o');
hold off;
legend ('sigma = 2', 'sigma = 3', 'sigma = 5');

X = sum(fd,2);
display(X);

