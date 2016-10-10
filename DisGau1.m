% Dicrete density fuction
clear;
clc;
sigma = [5,7,10];% assign different sigma value 
Ts = 1;% assign Ts value
for j =1:1:length(sigma)
    tau = -40:1:40;
    for i = 1:1:length(tau)
        fd(j,i) = DisGau(sigma(j),Ts,tau(i));
    end
end
figure;
hold on;
plot(tau,fd(1,:),'ro');
plot(tau,fd(2,:),'ko');
plot(tau,fd(3,:),'bo');
hold off;
legend('sigma=5','sigma=7','sigma=10')
