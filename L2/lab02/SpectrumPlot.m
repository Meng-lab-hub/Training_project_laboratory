function [] = SpectrumPlot(t, y)
% Sampling time
dt = t(2) - t(1);
Fs = 1/dt;

% the frequency of the grid -> fs divided by number of samples

N = length(y);
dF = Fs / N;
Y = fft(y) / N;

F = (0 : 1 : N-1) * dF;

figure(4);
subplot(2, 1, 1);
plot(t, y, 'b-'); xlabel('Time (s)'); ylabel('Amplitude (-)'); grid on; grid minor;
subplot(2, 1, 2);
plot(F, abs(Y), 'r-x'); xlabel('Frequency (Hz)'); ylabel('Signal measure (-)'); grid on; grid minor;

end

