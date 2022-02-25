w = 2*pi*60;
phi = pi/3;
t= 0:0.0001:1/30;
v1 = cos(w*t);
v2 = cos(w*t+phi);

plot(t, v1, t, v2)
legend('v1','v2', 'location', 'southeast')
xlabel('tempo (s)')
ylabel('v_1, v_2 (V)')

figure
stem(t, v1)
xlabel('tempo (s)')
ylabel('v_1 (V)')
