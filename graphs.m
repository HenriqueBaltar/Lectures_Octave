%% semilog graph

Is = 1E-12;
Vt = 25.6E-3;
I = @(V) Is*(exp(V/Vt)-1);
V = [0.3:0.05:0.6]';
out = V;
out(:,2) = I(V);

plot(out(:,1),1000*out(:,2), '*')
xlabel('tensão (V)')
ylabel('corrente (mA)')
title('curva característica de um diodo')
grid on
grid minor

semilogy(out(:,1),1000*out(:,2), '*')
xlabel('tensão (V)')
ylabel('corrente (mA)')
title('curva característica de um diodo')
grid on

%% log-log graph
mass = [ 0.35 2.5 4 10 70 500 5000 ] ;
metabolicRate = [ 1.2 5 15 40 250 1500 8000 ] ;

plot(mass, metabolicRate, '*')
xlabel('massa (kg)')
ylabel('taxa metabólica (W)')

loglog(mass, metabolicRate, '*')
xlabel('massa (kg)')
ylabel('taxa metabólica (W)')
grid on

%% error bar
% copied from https://www.mathworks.com/help/matlab/ref/errorbar.html

x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
yneg = [1 3 5 3 5 3 6 4 3 3];
ypos = [2 5 3 5 2 5 2 2 5 5];
xneg = [1 3 5 3 5 3 6 4 3 3];
xpos = [2 5 3 5 2 5 2 2 5 5];
errorbar(x,y,yneg,ypos,xneg,xpos,'o')