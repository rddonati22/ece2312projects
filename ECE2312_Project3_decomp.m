
% Rachel Donati and Lexi Krzywicki

% Use y and Fs/2

Fs2 = Fs/2;

target_F = 4000;
sampling_freq = Fs2;

stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;

F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(255, F, A);
lowpass_data = filter(lpf, A, y);

lowpass_down = downsample(lowpass_data,2);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(lowpass_data, window, N.overlap, N.fft, Fs2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs2/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Lowpass Filter");

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(lowpass_down, window, N.overlap, N.fft, Fs2/2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs2/4]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Lowpass Downsample");

% High Pass & Downsample

F = [0 passband_end stopband_st 1];
A = [0 0 1 1];
lpf = firls(255, F, A);
highpass_data = filter(lpf, 1, y);

highpass_down = downsample(highpass_data,2);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(highpass_data, window, N.overlap, N.fft, Fs2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs2/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Highpass Filter");

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(highpass_down, window, N.overlap, N.fft, Fs2/2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs2/4]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Highpass Downsample");
