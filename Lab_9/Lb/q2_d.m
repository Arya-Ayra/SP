N=5;
f0=50;
k=1:N;
A = sin(pi*k/N);
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(3);

N=5;
f0=50;
k=1:N;
A = cos(pi*k/N);
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(3);

N=5;
f0=50;
k=1:N;
A = k;
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(3);


