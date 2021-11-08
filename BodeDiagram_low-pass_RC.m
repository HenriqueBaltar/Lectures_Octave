clear, clc

pkg load control % load when initialize Octave to work with the control pack

R = 1E3;   % 1 kohm
C = 1E-6;  % 1 microfarad
tau = R*C  % time constant
w = 1/tau  % cut-off frequency (rad/s)
f = w/2/pi % cut-off frequency (Hz)

num = [1];       % numerator
den = [tau 1];   % denominator
H = tf(num, den) % transfer function

bode(H)

% another way to do it
s = tf('s')         % define s
G = 1/(1+s/w)^2 % then Octave will understand an equation like that
figure
bode(G)

K = 1/(1+s/w)/(1+s/(w/1000))
figure
bode (K)