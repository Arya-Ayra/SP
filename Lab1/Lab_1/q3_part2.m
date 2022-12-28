%RECONSTRUCTION FOR DIFFERENT VALUES OF N

time_grid = -0.5:0.01:0.5;
T=1;
t1=-0.1;
t2 = 0.1;
xt=1;
syms t;

%N=10
N=10;
A = fourierCoeff(t,xt,T,t1,t2,N);
Y = partialfouriersum(A , T , time_grid);
figure();
subplot(2,2,1);
plot(time_grid , Y, 'black', LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Reconstructed signal for N=10');

%N=50
N=50;
A = fourierCoeff(t,xt,T,t1,t2,N);
Y = partialfouriersum(A , T , time_grid);
subplot(2,2,2);
plot(time_grid , Y, 'black', LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Reconstructed signal for N=50');

%N=100
N=100;
A = fourierCoeff(t,xt,T,t1,t2,N);
Y = partialfouriersum(A , T , time_grid);
subplot(2,2,3);
plot(time_grid , Y, 'black', LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Reconstructed signal for N=100');
%{
%N=1000
N=1000;
A = fourierCoeff(t,xt,T,t1,t2,N);
Y = partialfouriersum(A , T , time_grid);
subplot(2,2,4);
plot(time_grid , Y, 'black', LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Reconstructed signal for N=1000');
%}
