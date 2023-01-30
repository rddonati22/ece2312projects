% Rachel Donati and Lexi Krzywicki
% Project 1

% data1_zeros = zeros(64000, 1);
% data1_stereo = [data1, data1_zeros];
% 
% filename = 'team4-stereosoundfile.wav';
% audiowrite(filename, data1_stereo, 8000);

data2_zeros = zeros(120000, 1);
data2_stereo = [data2, data2_zeros];

filename = 'team4-stereosoundfile2.wav';
audiowrite(filename, data2_stereo, 8000);

% data1_stereo((1 - 64000), 1) = data1;
% data1_stereo((1 - 64000), 2) = zeros;

