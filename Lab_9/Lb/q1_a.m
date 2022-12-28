%part a

N=2;
amp = 0.5;
phase = 0;
P = phase*ones(1,N);
td=4;
fs = 10000;
F=[350,440];
A = amp*ones(1,N);

[x1n] = SineSum(A,F,P,td,fs);
figure()
plot(0:1:499,x1n(1:500));
xlabel("n");
ylabel("x1[n]");
title("x1[n]");
sound(x1n);
