% Square wave with 1s of period, amplitude from -1 to +1

% time vector equally spaced with Npoints
period=2*pi;
Npoints=1000;
dt=period/Npoints;
t=0:dt:((Npoints-1)*dt);

% original function
x=cat(2, ones([1,Npoints/2]), -ones([1,Npoints/2]) );

% plotting original function in 1 period just for checking
figure('Color','White')
plot(t,x)
xlim([0 period])
ylim([-1.1 1.1])
xlabel('time (s)')
ylabel('voltage (V)')

% after the terms were analitically calculated,
% the following codes calculate the approximation for Nterms
Nterms=50;
f_fourier=zeros(size(t));
for k=1:Nterms
	f_fourier=f_fourier+sin((2*k-1)*t)/(2*k-1);
end
f_fourier=f_fourier*4/pi;

% plotting original function + the series with N terms
figure('Color','White')
plot(t,x,t,f_fourier)
xlim([0 period])
ylim([-1.2 1.2])
xlabel('time (s)')
ylabel('voltage (V)')
title(['Fourier series with ' num2str(Nterms) ' terms'])
