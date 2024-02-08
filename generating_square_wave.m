a = 3;  
pD = 9;   %b=9
T = 12;  %b+c=12
ss = 0.01;  
N = 5;  
[signal, time] = squareWaveCalculator(a, pD, T, ss, N);
plot(time, signal, 'k');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-1,5]);
title('Square Wave Signal');