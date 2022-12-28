fo = 12;
fs = 64;

m = 8;

L = 16;
arr = 0:L-1;
x = cos(2*pi*fo*arr / fs);
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,1);
plot(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('L=16 , DFT of cos(2*pi*fo*n / fs)');

L = 32;
arr = 0:L-1;
x = cos(2*pi*fo*arr / fs);
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,2);
plot(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('L=32 , DFT of cos(2*pi*fo*n / fs)');

L = 64;
arr = 0:L-1;
x = cos(2*pi*fo*arr / fs);
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,3);
plot(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('L=64 , DFT of cos(2*pi*fo*n / fs)');

L = 128;
arr = 0:L-1;
x = cos(2*pi*fo*arr / fs);
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,4);
plot(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('L=128 , DFT of cos(2*pi*fo*n / fs)');