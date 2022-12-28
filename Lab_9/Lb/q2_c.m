N=10;
f0=100;
A = 1:N;
for k=1:N
    A(k) = 1/k;
end
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(5);

N=10;
f0=150;
A = 1:N;
for k=1:N
    A(k) = 1/k;
end
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(5);

N=10;
f0=200;
A = 1:N;
for k=1:N
    A(k) = 1/k;
end
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(5);

N=15;
f0=100;
A = 1:N;
for k=1:N
    A(k) = 1/k;
end
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(5);

N=15;
f0=150;
A = 1:N;
for k=1:N
    A(k) = 1/k;
end
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(5);

N=15;
f0=200;
A = 1:N;
for k=1:N
    A(k) = 1/k;
end
fs = 10000;
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);

soundsc(xn);
pause(5);