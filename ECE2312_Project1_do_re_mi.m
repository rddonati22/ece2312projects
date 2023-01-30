% Rachel Donati and Lexi Krzywicki
% Project 1
Fs = 44000;

myVoice4 = audiorecorder(Fs, nBits, nChannels, ID);
disp("Record 4 Started");
recordblocking(myVoice4, 8);
disp("Recording 4 Stopped");
speech.data = getaudiodata(myVoice4);
% Fs = 44000;

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
[S,F,T,P] = spectrogram(speech.data, window, N.overlap, N.fft, Fs, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80, -20]);
ylim([0 8000]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');

