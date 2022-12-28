mu = 5;
sigma = 1;
x1 = normrnd(mu,sigma,1,10);
x2 = zeros(1,10);
x2(3) = 1;

N = 12;

cc = cconv(x1 , x2 ,N);
lc = conv(x1 , x2);

lw = 0:18;
cw = 0:N-1;

subplot(2,2,1);
stem(lw,lc);
xlabel('K');
ylabel('Linear convolution result.')
title('Linear convolution result.');
subplot(2,2,2);
stem(cw, cc);
xlabel('K');
ylabel('Circular convolution result.')
title('Circular convolution result.');
x1_fft = fft(x1 , N);
x2_fft = fft(x2 , N);
multi_dft = x1_fft .* x2_fft;

inverse_multi_dft = ifft(multi_dft , N);

subplot(2,2,4);
stem(cw ,inverse_multi_dft);
xlabel('K');
ylabel('Result after DFT and IDFT of N point signal.')
title('Result after DFT and IDFT of N point signal.');

x1_fft = fft(x1 , 19);
x2_fft = fft(x2 , 19);
multi_dft = x1_fft .* x2_fft;

inverse_multi_dft = ifft(multi_dft , 19);

subplot(2,2,3);
stem(lw ,inverse_multi_dft);
xlabel('K');
ylabel('Result after DFT and IDFT of N1+N2-1 point signal.')
title('Result after DFT and IDFT of N1+N2-1 point signal.');


