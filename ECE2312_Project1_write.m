% Rachel Donati and Lexi Krzywicki
% Project 1

Fs = 8000;

filename = 'fox_dog.wav';
audiowrite(filename, data1, Fs);

filename = 'ivory_buckles.wav';
audiowrite(filename, data2, Fs);

filename = 'opal_jewels.wav';
audiowrite(filename, data3, Fs);

[data1_wave, F1] = audioread('fox_dog.wav');
window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(data1_wave, window, N.overlap, N.fft, F1, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Fox and Dog");

[data2_wave, F2] = audioread('ivory_buckles.wav');
window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(data2_wave, window, N.overlap, N.fft, F2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Ivory Buckles");


[data3_wave, F3] = audioread('opal_jewels.wav');
window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(data3_wave, window, N.overlap, N.fft, F3, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Opal Jewels");