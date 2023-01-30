% Rachel Donati and Lexi Krzywicki
% Project 1

info = audiodevinfo;
ID = info.input.ID;
Fs = 8000;
nBits = 8;
nChannels = 1;

% myVoice1 = audiorecorder(Fs, nBits, nChannels, ID);
% disp("Record 1 Started");
% recordblocking(myVoice1, 8);
% disp("Recording 1 Stopped");
% play(myVoice1);
% data1 = getaudiodata(myVoice1);
% figure(1)
% plot(data1);
% xlabel("Time (seconds)");
% ylabel("Amplitude");
% title("Fox and Dog");

% myVoice2 = audiorecorder(Fs, nBits, nChannels, ID);
% disp("Record 2 Started");
% recordblocking(myVoice2, 15);
% disp("Recording 2 Stopped");
% play(myVoice2);
% data2 = getaudiodata(myVoice2);
% figure(2)
% plot(data2);
% xlabel("Time (seconds)");
% ylabel("Amplitude");
% title("Ivory Buckles");
% 
% myVoice3 = audiorecorder(Fs, nBits, nChannels, ID);
% disp("Record 3 Started");
% recordblocking(myVoice3, 10);
% disp("Recording 3 Stopped");
% play(myVoice3);
% data3 = getaudiodata(myVoice3);
% figure(3)
% plot(data3);
% xlabel("Time (seconds)");
% ylabel("Amplitude");
% title("Opal Jewels");
 
% The quick brown fox jumps over the lazy dog
% We promptly judged antique ivory buckles for the next prize 
% Crazy Fredrick bought many very exquisite opal jewels   

% Answer question about do re mi ... spectrogram

% Example:

% window= hamming(512);
% N.overlap = 256;
% N.fft = 1024;
% [S,F,T,P] = spectrogram(speech.data, window, N.overlap, N.fft,F-s,
% 'yaxis');
% figure;
% surf(T, F, 10*log10(P), 'edgecolor', 'none');
% axis tight;
% view(0,90);
% colormap(jet);
% set(gca, 'clim', [-80, -20]);
% ylim([0 8000]);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');

% Use the 3 recorded audio files above, generate spectrograms for
% first 8000 Hz
% Annotate graphs

% audioread and audiowrite
% WAV files
% Make 3 more spectrograms to compare

% Adding a new column vector of zeros in WAV
% Describe how it sounds with headphones

% pdf submission, link to gitlab
