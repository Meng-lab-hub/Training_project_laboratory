function [yq, codes] = Tquantizer(Ur_p, Ur_m, n, y)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
dq = (Ur_p - Ur_m) / 2^n;

codes = round((y - Ur_m)/dq);

yq = codes * dq * Ur_m;

x = (1:1:length(y));
plot(x, y, 'b', x, yq, 'r');

end

