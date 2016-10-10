function fd = DisGauTru(sigma,Ts,tau)
numer = 0;
denom = 0;
for i = -10:1:10
    numer = numer+(erfc((2*i-1)*Ts/2/sqrt(2*sigma^2))-erfc((2*i+1)*Ts/2/sqrt(2*sigma^2)))*(tau==i*Ts);
    denom = denom+(erfc((2*i-1)*Ts/2/sqrt(2*sigma^2))-erfc((2*i+1)*Ts/2/sqrt(2*sigma^2)));
end
fd = numer/denom; 