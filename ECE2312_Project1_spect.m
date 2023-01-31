% Rachel Donati and Lexi Krzywicki
% Project 1

F_s = 8000;

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(data1, window, N.overlap, N.fft, F_s, 'yaxis');
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


window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(data2, window, N.overlap, N.fft, F_s, 'yaxis');
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

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(data3, window, N.overlap, N.fft, F_s, 'yaxis');
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
