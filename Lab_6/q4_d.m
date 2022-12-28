N = 7;
wo_FS = 1;
A = zeros(2*N+1,1);

A(-1+N+1)= 1/2;
A(1+N+1) = 1/2;
T = 2*pi;
Time_grid = -2*T :0.01: 2*T;
G=1;
a=10;
figure();

B = NonIdeal(A,wo_FS, G, a);
Y = partialfouriersum(B , T, Time_grid);
plot(Time_grid ,Y);
xlabel("t");
ylabel("x(t)");
title("Output when A is input fourier coeff,a=10");
hold on;
Y = partialfouriersum(A , T, Time_grid);
plot(Time_grid ,Y);
hold off;

