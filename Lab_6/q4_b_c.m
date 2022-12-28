N = 5;
wo_FS = 1;
A = zeros(2*N+1,1);

A(-1+N+1)= 1/2;
A(1+N+1) = 1/2;
T = 2*pi;
Time_grid = -2*T :0.01: 2*T;

figure();
subplot(2,1,1);
wc = 2;
B = myLPF(A, wo_FS , wc);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff, wc = 2(LPF)");


subplot(2,1,2);
plot(Time_grid ,Y);
hold on;
wc = 0.5;
B = myLPF(A, wo_FS , wc);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff, wc = 0.5(LPF)");
hold off;

figure();
subplot(2,1,1);
wc = 2;
B = my_HPF(A, wo_FS , wc);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff, wc = 2");
hold on;
Y = partialfouriersum(A , T, Time_grid);
plot(Time_grid , Y);
hold off;

subplot(2,1,2);
plot(Time_grid ,Y);
hold on;
wc = 0.5;
B = my_HPF(A, wo_FS , wc);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff, wc = 0.5");
hold off;

