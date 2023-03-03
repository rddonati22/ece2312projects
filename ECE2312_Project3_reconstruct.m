
% Rachel Donati and Lexi Krzywicki

% Use lowpass_down2, highpass_down2, lowpass_down2b, highpass_down2b

a = upsample(lowpass_down2,2);      % LL

target_F = 2000;
sampling_freq = 4000;
stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;
F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(255, F, A);
a_filt = filter(lpf, A, a);

b = upsample(highpass_down2,2);     % LH

target_F = 2000;
sampling_freq = 4000;
stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;
F = [0 passband_end stopband_st 1];
A = [0 0 1 1];
lpf = firls(255, F, A);
b_filt = filter(lpf, 1, b);

c = upsample(lowpass_down2b,2);     % HL

target_F = 2000;
sampling_freq = 4000;
stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;
F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(255, F, A);
c_filt = filter(lpf, A, c);

d = upsample(highpass_down2b,2);    % HH

target_F = 2000;
sampling_freq = 4000;
stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;
F = [0 passband_end stopband_st 1];
A = [0 0 1 1];
lpf = firls(255, F, A);
d_filt = filter(lpf, 1, d);

ab = a_filt + b_filt;                         % Lx
cd = c_filt + d_filt;                         % Hx

%ab = a + b;
%cd = c + d;

ab_up = upsample(ab,2);

target_F = 4000;
sampling_freq = 8000;
stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;
F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(255, F, A);
ab_filt = filter(lpf, A, ab_up);

cd_up = upsample(cd,2);

target_F = 4000;
sampling_freq = 8000;
stopband_st = target_F/sampling_freq;
passband_end = (target_F)/sampling_freq;
F = [0 passband_end stopband_st 1];
A = [0 0 1 1];
lpf = firls(255, F, A);
cd_filt = filter(lpf, 1, cd_up);

abcd = ab_filt + cd_filt;
% abcd = ab_up + cd_up;

abcd_up = upsample(abcd,2);

soundsc(abcd_up,Fs)

filename = 'team4-synthesized.wav';
audiowrite(filename, abcd_up, Fs);

window= hamming(512);
N.overlap = 256;
N.fft = 1024;
%[S,F,T,P] = spectrogram(lowpass_data2, window, N.overlap, N.fft, Fs/4, 'yaxis');
%[S,F,T,P] = 
figure;
spectrogram(abcd_up, window, N.overlap, N.fft, Fs, 'yaxis');
%figure;
% surf(T, F, 10*log10(P), 'edgecolor', 'none');
% axis tight;
% view(0,90);
% colormap(jet);
% set(gca, 'clim', [-80, -20]);
% xlim([0 4]);
% ylim([0 Fs/2]);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title("Reconstructed Signal");
