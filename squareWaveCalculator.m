

function [signal, time] = squareWaveCalculator(a, pD, T, ss, N)
% a = amplitude 
% pD = duration that the signal is positive in a single period
% T = period
% ss = step size of the time vector
% N = number of periods to be plotted


time = 0:ss:N*T - ss;  %-ss to make sure that the upper bound<=N*T
signal = zeros(size(time));

for k = 0:N-1
    start_time = k*T;
    end_time = start_time + pD;
    index = (time >= start_time) & (time<end_time);
    signal(index) = a;
end
end

