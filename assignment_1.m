% Rachel Donati ECE 2312 Assignment 1

%function [] = assignment_1()
function assignment_1
% 
% n = 1:1:4;
% x = -2*n;
% stem(n, x, 'g')
% xlabel('Samples')
% ylabel('Sequence')
% box('off');
% title('Discrete Stem Plot')
% axis([-2 8 -10 2])

% close all;
% figure
% set(gcf, 'Position', [320 30 600 600])
% 
% x = [2 4 6 3];
% n0 = 2;
% % x(n0);
% % x(n0+2);
% % x(4);
% 
% length(x);
% time = (1:length(x))-n0;
% 
% stem(time, x, 'b') 
% xlabel('Index of n') 
% ylabel('Sequence of x[n]')
% box('off');
% 
% x = zeros(1, 20);
% x(10) = 1;
% n0 = 10;
% 
% time = (1:length(x))-n0;
% clf
% stem(time, x, 'b') 
% xlabel('Index of n') 
% ylabel('Sequence of x[n]')
% box('off');
% 
% t = 0:0.01:10;
% s = 5*sin(2*pi*2*t);
% n0 = 1;
% time = (1:length(s))-n0;
% clf
% stem(time,s, 'b') 
% xlabel('Index of n') 
% ylabel('Sequence of x[n]')
% box('off');
% %fprintf('Periodic function and the Period is 50')
% 
% t = 0:0.01:1;
% x2 = 5*exp(1j*2*pi*2*t);
% time = 1:length(x2);
% clf
% subplot(2,1,1)
% stem(time,real(x2), 'b') 
% xlabel('Index n Samples 0 - 100') 
% ylabel('Sequence of x[n]')
% box('off');
% title('Real')
% axis([0 100 -5 5]);
% 
% subplot(2,1,2)
% stem(time,imag(x2), 'b') 
% xlabel('Index n Samples 0 - 100') 
% ylabel('Sequence of x[n]')
% box('off');
% title('Imaginary')
% axis([0 100 -5 5]);
% 
% t = 1:0.01:1;
% x1 = 5*sin(2*pi*2*t);
% n0 = 1;
% x2 = 5*cos(2*pi*2*t);
% n0 = 1;
% time = 1:(length(x1));
% 
% clf
% subplot(3,2,1)
% stem(time, x1, 'g') 
% % xlabel('Index n Samples 0 - 100') 
% % ylabel('Sequence of x[n]')
% title('x1')
% box('off');
% axis([0 100 -5 5])
% 
% subplot(3,2,2)
% stem(time, x2, 'g') 
% % xlabel('Index n Samples 0 - 100') 
% % ylabel('Sequence of x[n]')
% title('x2')
% box('off');
% 
% y = x1.*x2;
% subplot
% 
% return;

x = [2 4 6 3];
clf
subplot(3,1,1)
n0 = 1;
time = (1:length(x))-n0;
stem(time, x, 'b')
xlabel('n')
ylabel('x[n]')
box('off')
title('n0=2')

subplot(3,1,2)
n0 = 2;
time = (1:length(x))-n0;
stem(time, x, 'b')
xlabel('n')
ylabel('x[n]')
box('off')
title('n0=4')

subplot(3,1,3)
n0 = 0;
time = (1:length(x))-n0;
stem(time, x, 'b')
xlabel('n')
ylabel('x[n]')
box('off')
title('n0=0')


% Convolution

x = [1 2 3 4];
h = [1 -1 1];
clf
subplot(2,2,1)
time = (1:length(x));
stem(time, x, 'b')
box('off')

subplot(2, 2, 2)
time = (1:length(h));
stem(time, h, 'b')
box('off')

subplot(2, 2, 3)
conv_x_h = conv(x, h);
time2 = (1:length(conv_x_h));
stem(time2, conv_x_h, 'g')
box('off')

subplot(2, 2, 4)
conv_h_x = conv(h, x);
time2 = (1:length(conv_h_x));
stem(time2, conv_h_x, 'g')
box('off')


clf
subplot(2,2,1)
time = (1:length(x));
stem(0:length(x)-1, x, 'b')
box('off')

subplot(2,2,2)
time = (1:length(h));
stem(0:length(h)-1, h, 'b')
box('off')


