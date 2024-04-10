% desenhos de respostas de equações de segunda ordem

% letra a
A1 = 1;
A2 = -2;
xn_a = @(t) A1*exp(-t) + A2*exp(-4*t);
l_a = 'superamortecido';

% letra b
A1 = 1;
A2 = 5;
xn_b = @(t) exp(-2*t) .* ( A1*cos(18*t) + A2*sin(18*t) );
l_b = 'subamortecido';

% letra c
A1 = 1;
A2 = -10;
xn_c = @(t) (A1+A2*t) .* exp(-4*t);
l_c = 'criticamente amortecido';

% gráfico
t = 0:0.01:5;

plot(t,xn_a(t) , t,xn_b(t) , t,xn_c(t))
xlabel('tempo')
ylabel('x_n')
legend(l_a, l_b, l_c)
