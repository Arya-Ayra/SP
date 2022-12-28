N = 20;
q  =0:19;
x = sin(3*(pi/10)*q);
Y = fft(x,N);
k = 0:N-1;
subplot(3,1,1);
plot(k , x);
xlabel('k');
ylabel('x[n]');
title('Input: Sin(3*pi*n/10)')
subplot(3,1,2);
t = abs(Y);
plot( k , t);
xlabel('k');
ylabel('abs(DFT(x[n]))');
title('Input: Sin(3*pi*n/10)')
subplot(3,1,3);
Y = angle(Y);
plot( k , Y);
xlabel('k');
ylabel('angle(DFT(x[n]))');
title('Input: Sin(3*pi*n/10)');
