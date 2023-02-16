
% Rachel Donati and Lexi Krzywicki

% Playing, Saving, Graphing Sprectrogram of fox_dog sentence tone and
% Playing, Saving, Graphing Sprectrogram of 5000 Hz + fox_dog tone
% Setting Left and Right Channels to Stereo

[x,Fs] = audioread('fox_dog_2.wav');
[y,Fs] = audioread('team4-speechchirp.wav');

stereo_speech = zeros(128000, 2);
stereo_speech(1:128000, 1) = x;
stereo_speech(1:128000, 2) = y;
soundsc(stereo_speech, Fs)

filename = 'team4-stereospeechsine.wav';
audiowrite(filename, stereo_speech, Fs);

figure(1);
subplot(1,2,1);
window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(x, window, N.overlap, N.fft, Fs, 'yaxis');
%figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlim([0 8]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Left Channel - Sentence");

subplot(1,2,2);
window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(y, window, N.overlap, N.fft, Fs, 'yaxis');
%figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title("Right Channel - Sentence & 5kHz");
