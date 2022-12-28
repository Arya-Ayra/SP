%time_grid = -0.5:0.01:0.5;
t1 = -1/4;
t2 =  1/4;
N = 5;
T = 1;

syms t;
xt = t;

A = fourierCoeff(t,xt,T,t1,t2,N);
k = -1*N : 1*N;
figure();
subplot(1,2,1);
stem(k , abs(A),'black');
grid on;

subplot(1,2,2);
stem (k , angle(A),'black')
grid on;

