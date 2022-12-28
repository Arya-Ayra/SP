N=5;
f0=50;
A = 1:N;
for k=1:N
    A(k) = 1/(k*k);
end
fs = 10000;
td = 1;
P=zeros(size(A));
xnb = harmonics(A,f0,P,td,fs);

soundsc(xnb);
