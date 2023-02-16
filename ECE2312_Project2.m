
% Rachel Donati and Lexi Krzywicki

% Playing, Saving, Graphing Sprectrogram of 5000 Hz sine tone

Fs = 16000;
freq = 5000;

time = (0:(1/Fs):8);
y = sin(2*pi*freq*time);
soundsc(y, Fs)

filename = 'team4-sinetone.wav';
audiowrite(filename, y, Fs);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(y, window, N.overlap, N.fft, Fs, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Sine Tone");
