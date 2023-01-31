% Rachel Donati and Lexi Krzywicki
% Project 1

data2_zeros = zeros(120000, 1);
data2_stereo = [data2, data2_zeros];

filename = 'team4-stereosoundfile2.wav';
audiowrite(filename, data2_stereo, 8000);

