syms t;
xt = 1;
t1 = -0.1;
t2 = 0.1;

                               %for T=1
T = 1;
N = 10*T;
A = fourierCoeff(t,xt,T,t1,t2,N);
figure();
k = -1*N:N;
subplot(2,2,1);
stem(k,T*A);
xlabel('k');
ylabel('FS Coefficients');
title('FS Coefficients for T=1');


                               %for T=10
T = 10;
N = 10*T;
A = fourierCoeff(t,xt,T,t1,t2,N);
k = -1*N:N;
subplot(2,2,2);
stem(k,T*A);
xlabel('k');
ylabel('FS Coefficients');
title('FS Coefficients for T=10');

                               %for T=20
T = 20;
N = 10*T;
A = fourierCoeff(t,xt,T,t1,t2,N);
k = -1*N:N;
subplot(2,2,3);
stem(k,T*A);
xlabel('k');
ylabel('FS Coefficients');
title('FS Coefficients for T=20');

                             %for T=30
T = 30;
N = 10*T;
A = fourierCoeff(t,xt,T,t1,t2,N);
k = -1*N:N;
subplot(2,2,4);
stem(k,T*A);
xlabel('k');
ylabel('FS Coefficients');
title('FS Coefficients for T=30');
