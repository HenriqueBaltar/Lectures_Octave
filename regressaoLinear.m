xn = [ -2   , -1.1 , 1 , 2.1 , 3   ] ;
yn = [ -1.1 , 0.9 , 5 , 7   , 8.9 ] ;

A = 1.974;
B = 2.95;

x = [ -5 5 ];
y = A*x + B;

plot(xn, yn, '*', x, y, '-')
xlabel('variável independente');
ylabel('variável dependente');
legend('pontos experimentais','regressão linear', 'location', 'best')