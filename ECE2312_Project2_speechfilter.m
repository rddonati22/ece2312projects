
% Rachel Donati and Lexi Krzywicki

% Playing, Saving, Graphing Sprectrogram of filtered version of
% 5000 Hz + fox_dog sentence tone

[y,Fs] = audioread('team4-speechchirp.wav');

a = lowpass(y,0.5);
soundsc(a, Fs)

filename = 'team4-filteredspeechsinewave.wav';
audiowrite(filename, a, Fs);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(a, window, N.overlap, N.fft, Fs, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Filtered Speech Sine Wave");
