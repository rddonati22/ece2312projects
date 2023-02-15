
% Rachel Donati and Lexi Krzywicki

[x,Fs] = audioread('fox_dog.wav');
Fs = 8000;
freq = 5000;
soundsc(x, Fs);
[y,Fs] = audioread('team4-sinetone.wav');
y = y(1:64000, 1);

%time = (0:(1/Fs):8);
%y = sin(2*pi*freq*time);
z = y + x;
soundsc(z, Fs)

filename = 'team4-speechchirp.wav';
audiowrite(filename, z, Fs);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(z, window, N.overlap, N.fft, Fs, 'yaxis');
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
