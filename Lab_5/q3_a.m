L = 4;

N = 4;
x = zeros(N , 1);
for i = 1:L
    x(i) = 1;
end
Y = fft(x , N);
k = 0:N-1;
subplot(3,3,1);
plot(k , x);
xlabel('k');
ylabel('x[n]');
title('del[n-3]');
subplot(3,3,2);
t = abs(Y);
plot( k , t);
xlabel('k');
ylabel('abs(DFT(x[n]))');
title('del[n-3]');
subplot(3,3,3);
Y = angle(Y);
plot( k , Y);
xlabel('k');
ylabel('angle(DFT(x[n]))');
title('del[n-3]');


L = 4;

N = 16;
x = zeros(N , 1);
for i = 1:L
    x(i) = 1;
end
Y = fft(x , N);
k = 0:N-1;
subplot(3,3,4);
plot(k , x);
xlabel('k');
ylabel('x[n]');
title('del[n-3]');
subplot(3,3,5);
t = abs(Y);
plot( k , t);
xlabel('k');
ylabel('abs(DFT(x[n]))');
title('del[n-3]');
subplot(3,3,6);
Y = angle(Y);
plot( k , Y);
xlabel('k');
ylabel('angle(DFT(x[n]))');
title('del[n-3]');


L = 4;

N = 64;
x = zeros(N , 1);
for i = 1:L
    x(i) = 1;
end
Y = fft(x , N);
k = 0:N-1;
subplot(3,3,7);
plot(k , x);
xlabel('k');
ylabel('x[n]');
title('del[n-3]');
subplot(3,3,8);
t = abs(Y);
plot( k , t);
xlabel('k');
ylabel('abs(DFT(x[n]))');
title('del[n-3]');
subplot(3,3,9);
Y = angle(Y);
plot( k , Y);
xlabel('k');
ylabel('angle(DFT(x[n]))');
title('del[n-3]');