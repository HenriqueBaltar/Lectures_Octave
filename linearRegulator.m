Vin = 1;
R1 = 1;
R2 = 1;
RL = [0:0.1:20];
Req = R2*RL ./ (R2+RL);
Vout = Vin * Req./(R1+Req);
plot(RL, Vout)
title('Voltage divider R_{1} = R_{2}')
xlabel('R_{L} / R_{2}')
ylabel('V_{out} / V_{in}')
ylim([0 0.5])
