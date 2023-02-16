
% Rachel Donati and Lexi Krzywicki

% Playing, Saving, Graphing Sprectrogram of CETK modified frequency tone

Fs = 16000;

time = (0:(1/Fs):8);
freq = zeros(1,64001);
freq(1,1:16000) = 932;
freq(1,16001:32000) = 1046;
freq(1,32001:64000) = 830;
freq(1,64001:80000) = 415;
freq(1,80001:120000) = 622;
freq(1,120001:128001) = 0;

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
title("CETK");
