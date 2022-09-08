%% FIRST LAW OF SAMPLING.

% if we meet this critiria, I will not lose an
% information of the sine wave with only 6 samples for example.

% if a signal has a bandwidth limit B then if I sampling with F >= 2*B then
% I will not lose an information.

%% effect of ALIASING

% signal frequency and sampling frequency has some relation if F < 2*B

% signal has 1 Hz
%   if sampling 2 Hz    I see  0 Hz
%             1,5 Hz         1.5 Hz
%             1.2 Hz         0.5 Hz
%             1.1 Hz         0.1 Hz

% sampling (as in dsp) and check -fs/2 to fs/2


% !! fullfilling F >= 2*B doesn't mean that we will get a sine wave. but it
% is there.


%% plotting guide
% figure(1); plot(y1, t1, 'b-', y2 ,t2, 'r-x'), grid on, grid minor;

% [t1, y1] = sinGenerator(2, 1, 1, 30, 20, 20);
% Y = fft(y1);
% figure(4); plot(real(Y), 'b-x'); hold on; plot(imag(Y), 'r-x'); grid on; grid minor; hold off;

%% FFT
% strength of harmonics: A * exp(2 * pi * f * j * t + phi)
% An * cos(...) + j * Bn * sin(...)

% how to plot a complex number in 2D?
% Ans: plot magnitude and phase shift. (complex number can be plotted as Re and Im as well)

% !! if we have sine wave at 5Hz then normally we will see a spectrum at
% 5Hz and -5Hz (this is the case when we consider -fs/2 to fs/2) but in mat
% lab it consider from 0 to fs therefore fs/2 will be the symmetry point of
% the spectrum.

% !!! if the sine wave has 5Hz then we have a sharp spectrum at 5Hz. but if we
% have 5.025Hz then will get a wider spectrum around 5.025Hz. Why???
% ANS: 

% we use 20Hz = fs => dt = 1/fs. we have sampling time 20s
% => dF = 20Hz * 20s = 400?

% we have only 400 sampling point at spectrum plot, dF = 0.05. so we
% can represent a spectrum precisely at 4.95Hz, 5Hz, 5.05Hz. but we are
% trying to measure a signal between 5Hz and 5.05Hz ---> SPECTRA LEAKAGE.
% therefore the power at 5.025Hz will spread around it.