% LR-series circuit under cosine voltage after t=0

clear, clc

R = 1E3;
L = 1E-3;
tau = L/R;
f = 1E6;
w = 2*pi*f;

C = -1/L*1/((1/tau)^2+w^2)*1/tau;

U = @(t) cos(w*t);
it = @(t) C*exp(-t/tau);
ip = @(t) 1/L*1/((1/tau)^2+w^2)*(1/L*cos(w*t)+w*sin(w*t));
i = @(t) it(t) + ip(t);
vR = @(t) R*i(t);
vL = @(t) U(t) - vR(t);

tt = 0:tau/50:5*tau;

%figure
subplot(1, 2, 1)
  plot(1E6*tt, 1E3*i(tt), 1E6*tt, 1E3*it(tt), 1E6*tt, 1E3*ip(tt))
  xlabel('time ({\mu}s)')
  ylabel('current (mA)')
  %ylim([0 1E-3])
  legend('current', 'temporary term', 'permanent term', 'location', 'northeast')

subplot(1, 2, 2)
  plot(1E6*tt, U(tt), 'k', 1E6*tt, vR(tt), 'r', 1E6*tt, vL(tt), 'g')
  xlabel('time ({\mu}s)')
  ylabel('voltage (V)')
  %ylim([0 1])
  legend('power supply', 'resistor', 'inductor', 'location', 'northeast')