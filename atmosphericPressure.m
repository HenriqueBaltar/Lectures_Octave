clear, clc

pa = 101325;
B = 6.5E-3;
T0 = 288.16;
p = @(h) pa*(1-B*h/T0).^5.26;

gama = 11.77;
p_stevin = @(h) pa - gama*h;

z=0:10:10000;
pz = p(z)/1000;
p_stevinz = p_stevin(z)/1000;

z_km = z/1000;

%figure
subplot(1,2,1)
plot(z_km, pz, z_km, p_stevinz)
ylim([0 110])
ylabel('pressão atmosférica (kPa)')
xlabel('altitude (km)')
legend('pressão por aproximação','pressão de Stevin')

subplot(1,2,2)
plot(z_km, p_stevinz./pz)
ylim([0 1.01])
ylabel('pressão de Stevin / pressão por aproximação')
xlabel('altitude (km)')