
% Rachel Donati and Lexi Krzywicki

Fs = 8000;

time = (0:(1/Fs):8);
freq = zeros(1,64001);
freq(1,1:8000) = 932;
freq(1,8001:16000) = 1046;
freq(1,16001:32000) = 830;
freq(1,32001:40000) = 415;
freq(1,40001:60000) = 622;
freq(1,60001:64001) = 0;

cetk = sin(2*pi*freq.*time);
soundsc(cetk, Fs)

filename = 'team4-cetk.wav';
audiowrite(filename, cetk, Fs);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(cetk, window, N.overlap, N.fft, Fs, 'yaxis');
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
