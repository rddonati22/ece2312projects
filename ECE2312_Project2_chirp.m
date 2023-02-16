
% Rachel Donati and Lexi Krzywicki

% Playing, Saving, Graphing Sprectrogram of 0 - 8000 Hz sine tone

Fs = 16000;

time = (0:(1/Fs):8);
freq = (time./8).*8000;
chirp = sin(2*pi*freq.*time);
soundsc(chirp, Fs)

filename = 'team4-chirp.wav';
audiowrite(filename, chirp, Fs);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(chirp, window, N.overlap, N.fft, Fs, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Chirp");
