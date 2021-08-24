% plotting insect population evolution example from
% https://tutorial.math.lamar.edu/classes/de/modeling.aspx

clear % clear variables
clc % clear terminal

k = log(3)/14;
% help log
% help log10

t0 = 0;
C = (100-8/k) * exp(-k*t0);

% defining function: variables inside @()
Q = @(t) 8/k + C*exp(k*t)

% tt = 0:50;
% gives the same result as
% tt = 0:1:50
% the middle number is the step size

tt = t0:0.5:50;
plot(tt, Q(tt))
title('Dynamics of insects population')
xlabel('days')
ylabel('population')