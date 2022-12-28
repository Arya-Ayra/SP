fo = 12;
fs = 64;
L = 16;

arr = 0:L-1;
x = cos(2*pi*fo*arr / fs);
han = hann(L);

for i = 1:L
    x(i) = x(i) * han(i);
end
figure();
m = 1;
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,1);
stem(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('M=1 , DFT of cos(2*pi*fo*n / fs)');

m = 2;
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,2);
stem(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('M=2 , DFT of cos(2*pi*fo*n / fs)');

m = 4;
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,3);
plot(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('M=4 , DFT of cos(2*pi*fo*n / fs)');

m = 8;
N = m*L;
Y = abs(fft(x , N));
w = 0:N-1;
subplot(2,2,4);
plot(w , Y);
xlabel('K');
ylabel('Abs(DFT(X[n]))');
title('M=8 , DFT of cos(2*pi*fo*n / fs)');
