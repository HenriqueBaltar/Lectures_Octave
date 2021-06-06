% para dúvidas sobre como se usa uma função, use o comando help nome_da_função
clear, clc
f = @(x) 1/(1-x); % função original
tn = @(x, n) x^n; % para n diferente de 1
t0 = 1; % para n = 1. Assim evitamos 0^0

n = 50; % definindo quantos termos terá na soma
x=0.1;

%% graficar tn em função de n
tt(1) = t0;
if (n > 0)
  for k=1:n
    tt(1+k) = tn (x, k);
  endfor
endif

figure
subplot(1,2,1)
plot(0:n, tt, 'o')
xlabel('n')
ylabel('tn')
title('n vs tn')

%% graficar Sn em função de n
function retval = sn (x, m)
  retval = 1; % m = 1
  if (m > 0)
    for i=1:m
      retval = retval + x^i;
    endfor
  endif
endfunction

for k=0:n
  s(1+k) = sn (x, k);
endfor
subplot(1,2,2)
ff = f(x);
plot([0 n], [ff ff])
hold on
plot(0:n, s, 'o')
xlabel('n')
ylabel('Sn')
title('n vs Sn')