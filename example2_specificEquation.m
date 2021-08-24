% result of the differential equation
% y' + y = x + 1

clear, clc

y = @(C, x) x+C*exp(-x);

C1 = -1;
C2 = 0;
C3 = 0.1;
C4 = 1.5;

x = -3:0.1:3;

plot(x, y(C4, x), x, y(C3, x), x, y(C2, x), x, y(C1, x))
xlabel('x')
ylabel('y')
title('y = x + Ce^{-x}', 'interpreter', 'tex')

% execute later
axis([-3 3 -3 3])
legend(num2str(C1), num2str(C2), num2str(C3), num2str(C4),
       'location', 'southeast')