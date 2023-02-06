% plotting boost converter gain

D = 0:0.01:0.99;
Vs = 1;
Vo = Vs./(1-D);

plot(D, Vo)
xlabel('duty cycle, D')
ylabel('V_{o} / V_{s}')
title('boost converter')
ylim([0 20])
grid on
grid minor


% inductance with DCR

R=5
rL=0.05;
D = 0:0.001:0.999;
n = 1./(1+ rL/R./(1-D).^2);

Vo_ideal = 1./(1-D);
Vo_real = Vo_ideal ./ (1 + rL/R./(1-D).^2);

figure
subplot(2,1,1)
plot(D, Vo_ideal, D, Vo_real)
title('boost converter with R / rL = 100')
ylim([0 10])
ylabel('V_o / V_s')
legend('ideal','non-ideal', 'location', "northwest")

subplot(2,1,2)
plot(D, n, 'r')
xlabel('duty cycle, D')
ylabel('efficiency, \eta')
