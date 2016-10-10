% Descrete density function 
% parameter : sigma, Ts : uniformly spaced instants Ts, tau: random
% variables

function fd = DisGau(sigma,Ts,tau)
fd = 0;
for i = -40:1:40
    fd = fd+(erfc((2*i-1)*Ts/2/sqrt(2*sigma^2))-erfc((2*i+1)*Ts/2/sqrt(2*sigma^2)))*(tau==i*Ts);
end
fd = fd/2;