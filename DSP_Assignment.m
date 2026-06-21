%  y[n] - 0.7y[n-1] + 0.1y[n-2] = x[n] + 0.5x[n-1]
clc; clear; close all;

b = [1, 0.5];       % numerator  (x[n] side)
a = [1, -0.7, 0.1]; % denominator (y[n] side)

%%  PART 1: Time Domain 

% Impulse response h[n]

n1 = 0:30;
h  = filter(b, a, [1, zeros(1,30)]);
figure;

stem(n1, h, 'filled');
title('Impulse Response h[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

% Input x[n] and output y[n] 

n2 = 0:50;
x  = cos(0.1*pi*n2);
y  = filter(b, a, x);

figure;

stem(n2, x, 'filled'); hold on;
stem(n2, y, 'filled'); hold off;

title('x[n] and y[n]');
xlabel('n'); ylabel('Amplitude');
legend('x[n] = cos(0.1\pin)', 'y[n]'); grid on;


%%  PART 2: Frequency Domain 

% Pole-zero map

figure; 
zplane(b, a); 
title('Pole-Zero Map'); 
grid on;

% Magnitude and phase response

figure; 

freqz(b, a, 1024);

poles = roots(a);

