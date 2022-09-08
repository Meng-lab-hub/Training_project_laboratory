function [t, y] = sinGenerator(A, offs, f, phi, fs, T)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

% T is a observation time not time period of sine wave.
% fs sampling time of the sampling
% f frequencty of sine wave

t = (0:1/fs:T-1/fs);
y = A * sin(2 * pi * f * t + phi * pi / 180) + offs;

figure(1);
plot(t, y, 'b');

end
