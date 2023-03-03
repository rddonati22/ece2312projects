
% Rachel Donati and Lexi Krzywicki

[x,Fs] = audioread('fox_dog_2.wav');

target_F = 15999;
sampling_freq = Fs;

stopband_st = target_F/sampling_freq;
passband_end = (target_F-2000)/sampling_freq;

F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(500, F, A);
filtered = filter(lpf, 1, x);
y = downsample(x,2);

% Downsample Signal

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(y, window, N.overlap, N.fft, Fs/2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs/4]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Downsampled");

% Lowpass Filtered Signal

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(filtered, window, N.overlap, N.fft, Fs, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Filtered");

% Original Signal

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(x, window, N.overlap, N.fft, Fs, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Original");
