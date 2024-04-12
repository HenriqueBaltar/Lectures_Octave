% Exercício 8.33 do Sadiku, V. 5

%% resposta forçada
vf = 20;

%% resposta natural
s1 = sqrt(6)-2.5
s2 = -sqrt(6)-2.5
D = 2*( s2-s1 )
D1 = -20*s2 + 1
D2 = 20*s1 - 1
A = D1/D
B = D2/D
vn = @(t) A*exp(s1*t) + B*exp(s2*t);

%% resposta total
v = @(t) vf + vn(t)

%% gráfico
t = 0:0.01:100;
plot(t,v(t))
xlabel('tempo (s)')
ylabel('tensão no capacitor (V)')
