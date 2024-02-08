
a=1;
pD=1;   %Duration that the signal is positive in a single period
T=2;   %Period of the square wave
ss=0.01;   %Step size of the time vector
N=1;   %Number of periods to be plotted

%the signal s(t)
[signal, time] = squareWaveCalculator(a, pD, T, ss, N);
fAxis = -5:0.01:5;
% calculating ctft
ctft = calculateCTFT(fAxis, signal, time);
%plotting
figure;
plot(fAxis, abs(ctft),"k","LineWidth",1);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude of the CTFT of s(t)');
grid on;

%=================================================================


% Constants 
a = 3;
b = 9;
c = 3;
% necessary variables for the function
T =b +c; 
ss = 0.01; 
N = 1; 
pD_values = [0.2, 0.5, 1, 1.5]; 

figure;
% plotting for different pD values
for i = 1:length(pD_values)
    pD = pD_values(i); 
    [signal, time] = squareWaveCalculator(a, pD, T, ss, N);
    plot(time, signal, 'LineWidth', 1.5);
    hold on;
end

xlabel('Time');
ylabel('Amplitude');
title('Square Wave for Different pD Values');
legend(['pD = ' num2str(pD_values(1))], ['pD = ' num2str(pD_values(2))], ...
       ['pD = ' num2str(pD_values(3))], ['pD = ' num2str(pD_values(4))]);
grid on;
hold off;

%========================================================================
% Constants 
a = 3;
b = 9; 
c = 3;
% necessary variables for the function
T = b + c; 
ss = 0.01; 
N = 1; 
pD_values = [0.2, 0.5, 1, 1.5]; 
fAxis = -5:0.01:5;
% plotting for different pD values
for i = 1:length(pD_values)
    pD = pD_values(i); 
    [signal, time] = squareWaveCalculator(a,pD,T,ss,N);
    ctft = calculateCTFT(fAxis, signal, time);
    plot(fAxis, abs(ctft), 'LineWidth', 1.5);
    hold on;
end

xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude of the CTFT of s(t) for Different pD Values');
legend(['pD = ' num2str(pD_values(1))], ['pD = ' num2str(pD_values(2))], ...
       ['pD = ' num2str(pD_values(3))], ['pD = ' num2str(pD_values(4))]);
grid on;
hold off;
%========================================================================

a = 3;
b = 9; 
c = 3;
% necessary variables for the function
T =b+c; 
ss = 0.01; 
pD = 1;
N_values = [5, 10, 20, 50]; 
% plotting for different N values
for i = 1:length(N_values)
    N = N_values(i); 
    [signal, time] = squareWaveCalculator(a, pD, T, ss, N);
    figure;
    plot(time, signal, 'LineWidth', 1.5,"Color","k");
    xlabel('Time');
    ylabel('Amplitude');
    ylim([0,5])
    title(['Square Wave for N = ' num2str(N)]);
    grid on;
end

%=========================================================================
% Constants 
a = 3;
b = 9; 
c = 3;
% necessary variables for the function
T = b + c; 
ss = 0.01; 
pD = 1; 
N_values = [5, 10, 20, 50]; 
fAxis = -5:0.01:5;
% plotting for different N values
for i = 1:length(N_values)
    N = N_values(i); 
    [signal, time] = squareWaveCalculator(a,pD,T,ss,N);
    ctft = calculateCTFT(fAxis, signal, time);
    figure;
    plot(fAxis, abs(ctft), 'LineWidth', 1.5,"Color","k");
    xlabel('Time');
    ylabel('Amplitude');
    ylim([-40,160])
    title(['CTFT for N = ' num2str(N)]);
    grid on;
end