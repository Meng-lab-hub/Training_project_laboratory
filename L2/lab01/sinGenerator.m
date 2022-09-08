function [y, t] = sinGenerator(A, offs, f, phi, fs, T)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
t = 0:fs:T;
y = A * sin(2 * pi * f * t + phi * pi / 180) + offs;

end

