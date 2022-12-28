T = 1;
N = 10;
t1 = -1/4;
t2 = 1/4;
xt = 1;
syms t;
F = fourierCoeff(t,xt,T,t1,t2, N);
 
k = -1*N : 1*N;

figure();
stem(k,F, 'black');
xlabel('k');
ylabel('FS Coefficeients');
title('FS Coefficient of x(t)');
grid on;
