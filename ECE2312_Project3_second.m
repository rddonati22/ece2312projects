
% Rachel Donati and Lexi Krzywicki

% Use lowpass_down and Fs2/2

Fs3 = Fs2/2;

target_F = 2000;
sampling_freq = Fs3;

stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;

F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(255, F, A);
lowpass_data2 = filter(lpf, A, lowpass_down);

lowpass_down2 = downsample(lowpass_data2,2);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(lowpass_data2, window, N.overlap, N.fft, Fs3, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Lowpass 2 Filter");

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(lowpass_down2, window, N.overlap, N.fft, Fs3/2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/4]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Lowpass 2 Downsample");

% High Pass & Downsample

F = [0 passband_end stopband_st 1];
A = [0 0 1 1];
lpf = firls(255, F, A);
highpass_data2 = filter(lpf, 1, lowpass_down);

highpass_down2 = downsample(highpass_data2,2);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(highpass_data2, window, N.overlap, N.fft, Fs3, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Highpass 2 Filter");

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(highpass_down2, window, N.overlap, N.fft, Fs3/2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/4]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Highpass 2 Downsample");



% Other half of block diagram

% Use highpass_down, and Fs2/2

Fs3 = Fs2/2;

target_F = 2000;
sampling_freq = Fs3;

stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;

F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(255, F, A);
lowpass_data2b = filter(lpf, A, highpass_down);

lowpass_down2b = downsample(lowpass_data2b,2);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(lowpass_data2b, window, N.overlap, N.fft, Fs3, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Lowpass 2b Filter");

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(lowpass_down2b, window, N.overlap, N.fft, Fs3/2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/4]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Lowpass 2b Downsample");

% High Pass & Downsample

F = [0 passband_end stopband_st 1];
A = [0 0 1 1];
lpf = firls(255, F, A);
highpass_data2b = filter(lpf, 1, highpass_down);

highpass_down2b = downsample(highpass_data2b,2);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(highpass_data2b, window, N.overlap, N.fft, Fs3, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/2]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Highpass 2b Filter");

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(highpass_down2b, window, N.overlap, N.fft, Fs3/2, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
xlim([0 4]);
ylim([0 Fs3/4]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Highpass 2b Downsample");
