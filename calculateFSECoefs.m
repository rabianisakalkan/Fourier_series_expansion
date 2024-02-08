function coefs = calculateFSECoefs(f, N, T0, t)
    % f: One period of the signal f(t) 
    % N: Number of harmonics 
    % T0: fundamental period 
    % t: One period time vector for signal f(t) 

    f0 = 1 / T0; % fundamental frequency
    coefs = zeros(1, 2 * N + 1); % Initialize the coefficients vector

    for k = -N:N
        complex_exponential = exp(-1j * 2 * pi * f0 * k * t); 
        product = f .* complex_exponential;
        integral = trapz(t, product);
        ck = (1/T0)*integral;
        coefs(k+N+1) = ck; %to store the ck values in coefs vector
    end
end
