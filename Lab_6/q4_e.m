N = 5;
wo_FS = 1;
A = zeros(2*N+1,1);

A(-3+N+1)= 1/2;
A(3+N+1) = 1/2;
A(-2+N+1)= 1i/2;
A( 2+N+1)= -1*1i/2;

T = 2*pi;
Time_grid = -2*T :0.01: 2*T;

figure();
subplot(2,1,1);
wc = 2.5;
B = myLPF(A, wo_FS , wc);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff, wc = 2.5(LPF)");

subplot(2,1,2);
Y = partialfouriersum(A , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Input signal");



figure();
subplot(2,1,1);
wc = 2.5;
B = my_HPF(A, wo_FS , wc);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff, wc = 2.5(HPF)");

subplot(2,1,2);
Y = partialfouriersum(A , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Input signal");


T = 2*pi;
Time_grid = -2*T :0.01: 2*T;
G=1;
a=10;
figure();
subplot(2,1,1);
B = NonIdeal(A,wo_FS, G, a);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff,a=10");

subplot(2,1,2);
Y = partialfouriersum(A , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Input Signal");


