N = 4;
N = power(2 , N);
t = 0:N-1;
N = length(t);
xt = cos(t);
x = radix2fft(xt);

subplot(2,1,1);
plot(t ,  x);
xlabel("w");
ylabel("DTFT(x(t))");
title("DTFT of cos(t) using radix2fft function");
subplot(2,1,2);
Y = fft(xt , N);
plot(t , Y);
xlabel("w");
ylabel("DTFT(x(t))");
title("cos(t)");