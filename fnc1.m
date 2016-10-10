% fuction calculate the truncated sigma from the orginal sigma
% parameter: sigma , t: trancated interval

function sigma_T = fnc1(t,sigma)
sigma_T = sqrt(sigma^2*(1-1/(1-erfc(t/sqrt(2*sigma^2)))*2*t/sqrt(2*pi*sigma^2)*exp(-t^2/2/sigma^2)));
end
