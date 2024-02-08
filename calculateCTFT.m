function ctft = calculateCTFT(fAxis, signal, time)
    % fAxis:frequency vector
    % signal:values of the signal x(t) in vector form
    % time:time vector of the signal x(t)

   ctft = zeros(1, length(fAxis)); %initializing the ctft vector

    for k = 1:length(fAxis)
        F = fAxis(k); %current f value
        complex_exponential = exp(-1j*2*pi*F*time);
        product = signal .* complex_exponential;
        integral = trapz(time, product);
        ctft(k) = integral;
    end
end
