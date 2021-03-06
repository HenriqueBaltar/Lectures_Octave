clear, clc

F = @(s) (s+1) ./ ( (s+2-j) .* (s+2+j) )
%F = @(s) (s+1) / ( s.^2 + 4*s + 5 )
xx = linspace(-8, 8, 101);
yy = xx;
[x, y] = meshgrid(xx, yy);

s = x + j*y;a
F_s = F(s);
realF = real(F_s);
imagF = imag(F_s);
absF = abs(F_s);

figure
subplot(2,2,1)
surf(x, y, realF)
xlabel('\alpha (s^{-1})')
ylabel('\omega (rad/s)')
zlabel('real( F(s) )')

subplot(2,2,2)
surf(x, y, imagF)
xlabel('\alpha (s^{-1})')
ylabel('\omega (rad/s)')
zlabel('imag( F(s) )')

subplot(2,2,3)
surf(x, y, absF)
xlabel('\alpha (s^{-1})')
ylabel('\omega (rad/s)')
zlabel('abs( F(s) )')
%zlim([0 0.3])

subplot(2,2,4)
% s = x + jy = jw when x = 0
% x = 0 : any line
%       : colunm 51
plot(y(:,51), absF(:,51))
xlabel('\omega (rad/s)')
ylabel('abs( F(j\omega) )')
