% task4.2 
clc;
clear;
%  task 3.1(b): difine an initial value and then generate random variates

i=2* rand(1,1)-1;
n=1000;
s=zeros(1,n);
t=1;
for t=1:n;
    i=2*i^2-1;
    s(1,t)=i;
end

% mean(s);
% var(s);
% histogram(s)

% transfer the sequence to binary random numbers sequences

count = 0;
for j=1:1:n;
    if s(1,j) > 0
        count = count+1;
        binarySeq(count) = 1;
    elseif s(1,j) < 0
        count = count+1;
        binarySeq(count) = 0;
    end
end

nStream = 1000
X_1 = binarySeq(1:nStream);% get the required numbers of bits sequence

% covert the input sequence (binary sequence) to the values of -1 and +1 then creat
% the sequence X
X = 2*X_1 -1 
% apply a DFT on cbrs to produce a complex variables, then get a sub matrix of the first
% N/2 elements in S, called S1, and then get the modulus of S1.
N = size(X,2);
S = fft(X);
S1 = S(1:N/2);
M = abs(S1); 
T = sqrt((log(1/0.05))*N); % = 95% peak height threshold value.
N_0 = .95*N/2; % expected theroretical(95%)numbers of peaks that are less than T

% find N_1 = the actual observed numbers of peaks in M that are less than T
count = 0;
for i = 1:1:length(M)
    if M(i)<T
        count = count+1;
    end
end
N_1 = count;
d = (N_1-N_0)/(sqrt(N*0.95*0.05/4));
P = erfc(abs(d)/sqrt(2));
% decision rules (at the 1% level): if the calculated P-value is <
% 0.01,then conclude that the sequence is non-random. If P-value is >=
% 0.01, then the conclusion is that the sequence is random. A d value is
% too low would indicate that there were too few peaks(<95%) below T, and
% too many peaks above T.
if P >= 0.01
    disp('The sequence was generated randomly');
else
    disp('The sequence was generated non-randomly');
end
    
