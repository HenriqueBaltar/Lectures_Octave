termo = @(n) (-1).^n ./ n;

k = 50;
soma = 0;
for ii=1:k
  soma = soma + termo(ii) % verifique a convergência dos valores escritos no terminal
endfor

stem([1:k], termo(1:k))
