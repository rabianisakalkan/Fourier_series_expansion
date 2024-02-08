
a = 3 ;
b = 9; 
c = 3; 
pD = b; 
T = b + c; 
ss = 0.01; 
N_values = [3, 5, 10, 50]; 
[signal, time] = squareWaveCalculator(a, pD, T, ss, 1); 

% fourier series expansion
for i = 1:length(N_values)
    N = N_values(i);
    coefficients = calculateFSECoefs(signal, N, T, time);
    f0 = 1/T;
    new_signal = zeros(size(time));
    for k = -N:N
        new_signal = new_signal+coefficients(k+N+1)*exp(1j*2*pi*f0*k*time);
    end

    %plotting
    figure;
    plot(time, signal, 'k', 'LineWidth', 1.5);
    hold on;
    plot(time, real(new_signal), 'm', 'LineWidth', 1.5);
    hold off;
    xlabel('Time');
    ylabel('Amplitude');
    title(['Square Wave and Fourier Series Expansion (N = ' num2str(N) ')']);
    legend('Original Square Wave', 'Fourier Series Expansion');
    grid on;
end