% LR-series circuit under constant voltage after t=0

clear, clc

R = 1E3;
L = 1E-3;
U = 1;
tau = L/R

i = @(t) tau*U/L*( 1 - exp(-t/tau) );
vR = @(t) R*i(t); % note that I wrote i as a function of t, as it is
vL = @(t) L*U/L*exp(-t/tau);

tt = 0:tau/50:5*tau;

%figure
subplot(1, 2, 1)
  plot(1E6*tt, 1E3*i(tt))
  xlabel('time ({\mu}s)')
  ylabel('current (mA)')
  %ylim([0 1E-3])

subplot(1, 2, 2)
  plot(1E6*tt, vR(tt), 'r', 1E6*tt, vL(tt), 'g')
  xlabel('time ({\mu}s)')
  ylabel('voltage (V)')
  %ylim([0 1])
  legend('resistor', 'inductor', 'location', 'east')