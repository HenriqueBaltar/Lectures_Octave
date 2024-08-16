clear, clc

%% histogram

x = 5 + *randn(100,1);
%nbins = 8;
%h = histogram(x,nbins)
h = histogram(x, [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10])
xlabel('variável')
ylabel('frequência')

xmed = mean(x)
xdp = std(x) % standard deviation
%xvar = var(x)

%% histograms with very few bins and with too many bins

subplot(1,3,1)
binsNumber = 3;
h = histogram(x, binsNumber)
xlabel('variable')
ylabel('frequency')
title(['number of bins: ' num2str(binsNumber)])

subplot(1,3,2)
binsNumber = 10;
h = histogram(x, binsNumber)
title(['number of bins: ' num2str(binsNumber)])

subplot(1,3,3)
binsNumber = 50;
h = histogram(x, binsNumber)
title(['number of bins: ' num2str(binsNumber)])

%% changing sample size

sampleSize = 10;
x = 5 + randn(sampleSize,1);
subplot(2,2,1)
h1 = histogram(x, [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10])
title(['sample size: ' num2str(sampleSize)])
xmed(1) = mean(x);
xdp(1) = std(x); % standard deviation

sampleSize = 20;
x = 5 + randn(sampleSize,1);
subplot(2,2,2)
h2 = histogram(x, [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10])
title(['sample size: ' num2str(sampleSize)])
xmed(2) = mean(x);
xdp(2) = std(x); % standard deviation

sampleSize = 100;
x = 5 + randn(sampleSize,1);
subplot(2,2,3)
h3 = histogram(x, [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10])
xlabel('variable')
ylabel('frequency')
title(['sample size: ' num2str(sampleSize)])
xmed(3) = mean(x);
xdp(3) = std(x); % standard deviation

sampleSize = 1000;
x = 5 + randn(sampleSize,1);
subplot(2,2,4)
h4 = histogram(x, [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10])
title(['sample size: ' num2str(sampleSize)])
xmed(4) = mean(x)
xdp(4) = std(x) % standard deviation

%% histogram and gaussian

x = 5 + randn(100,1);
%nbins = 8;
%h = histogram(x,nbins)
h = histogram(x, [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10])
xlabel('variável')
ylabel('frequência')

xmed = mean(x)
xdp = std(x) % standard deviation
xvar = var(x)

hold on

xi=[0:0.1:10]
g = exp( -0.5*((xi-xmed)/xdp).^2 ) / ( xdp*sqrt(2*pi) );
plot(xi, h.BinWidth*length(x)*g)
legend('histogram', 'Gaussian * total frequency * bin width')

