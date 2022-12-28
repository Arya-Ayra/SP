
figure()
N=5;
f0=50;
fs = 10000;
td = 1;
P=zeros(1,N);
k=1:N;


A = 1:N;
for ii=1:N
    A(ii) = 1/ii;
end
xn = harmonics(A,f0,P,td,fs);

subplot(5,1,1);
plot(0:length(xn)-1, xn);
xlabel("n");
ylabel("xn");
title("ak = 1/k");


A = 1:N;
for ii=1:N
    A(ii) = 1/(ii*ii);
end
xn = harmonics(A,f0,P,td,fs);

subplot(5,1,2);
plot(0:length(xn)-1, xn);
xlabel("n");
ylabel("xn");
title("ak = 1/k^2");


A = sin(pi*k/N);
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,3);
plot(0:length(xn)-1, xn);
xlabel("n");
ylabel("xn");
title("ak = sin(pi*k/N)");

A = cos(pi*k/N);
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,4);
plot(0:length(xn)-1, xn);
xlabel("n");
ylabel("xn");
title("ak = cos(pi*k/N)");

A = k;
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,5);
plot(0:length(xn)-1, xn);
xlabel("n");
ylabel("xn");
title("ak = k");

