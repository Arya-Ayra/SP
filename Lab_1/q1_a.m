%main.m for q1

T = 1;
N = 5;
t1 = 0;
t2 = 1;
syms t;

xt = 2*cos(2*pi*t) + cos(6*pi*t);

F = fourierCoeff(t,xt,T,t1,t2,N);

k=-1*N : N ;
figure();
stem( k , F , 'black');
xlabel('k');
ylabel('FS Coefficeients');
title('FS Coefficient of x(t)');
grid on;