
filename = 'Audio Files_1.wav';

[x,Fs] = audioread(filename);
L = length(x);

m = 4;

N = m*L;

Y = abs(fft(x , N));
K = 0:N-1;
w = 2*pi*K/N;
stem(w , Y);
xlabel('Frequencies');
ylabel('Abs(DFT(X[n]))');
title('M=2 ');
%w = 2*pi*k/N.


filename = 'Monkey.wav';

[x,Fs] = audioread(filename);
L = length(x);

m = 4;

N = m*L;

Y = abs(fft(x , N));
K = 0:N-1;
w = 2*pi*K/N;
figure();
stem(w , Y);
xlabel('Frequencies');
ylabel('Abs(DFT(X[n]))');
title('M=2 ');


