% plotting boost converter gainD = 0:0.01:0.99;Vs = 1;Vo = Vs./(1-D);plot(D, Vo)xlabel('duty cycle, D')ylabel('V_{o} / V_{s}')title('boost converter')ylim([0 20])grid ongrid minor