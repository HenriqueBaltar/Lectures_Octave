%% transmission line data
f=60; % Hz
w=2*pi*f; % rad/s
R=0.1; %/km
G=0;
L=1.358E-3;
C=8.488E-9;
Z=R+1j*w*L; % ohm
Y=G+1j*w*C; % S
Z0=sqrt(Z/Y) % ohm
gamma=sqrt(Z*Y); % propagation constant
l=1000; % km, transmission line length
Vplus=230; % kV, nominal voltage

%% phasorial solution
Vi=@(x) Vplus*exp(-gamma*x); % incident voltage
RR=1000; % ohm, termination impedance
GammaV=(RR-Z0)/(RR+Z0); % coefficient of reflection for voltage
Vi_l=Vi(l); % voltage at the end of transmission line
Vr_l=Vi_l*GammaV; % reflected voltage at the end of transmission line
Vminus=Vr_l/exp(gamma*l);
Vr=@(x) Vminus*exp(gamma*x);
xx=0:1000;
%plot(xx, Vi(xx), xx, Vr(xx), xx, Vi(xx)+Vr(xx))
plot(xx, abs(Vi(xx)), xx, abs(Vr(xx)), xx, abs(Vi(xx)+Vr(xx)))
ylabel('voltage amplitude (kV)')
xlabel('position (km)')

%% complete solution
Vit=@(x, t) Vi(x)*exp(1j*w*t);
Vrt=@(x, t) Vr(x)*exp(1j*w*t);
t=1; % s, time
figure
plot(xx, real(Vit(xx,t)))
figure
plot(xx, real(Vrt(xx,t)))
figure
plot(xx, real(Vit(xx,t)+Vrt(xx,t)))
