% Rachel Donati and Lexi Krzywicki
% Project 1

<<<<<<< HEAD
% Making Audio Matrix with entire column of zeros

=======
>>>>>>> 3519fc10e1feab4e979e7b6e66e802bd8dac94c5
data2_zeros = zeros(120000, 1);
data2_stereo = [data2, data2_zeros];

filename = 'team4-stereosoundfile2.wav';
audiowrite(filename, data2_stereo, 8000);

