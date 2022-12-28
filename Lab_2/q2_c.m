p = 0.8;
b = [1];
a = [1,p];

[h,t] = impz(b,a);
figure();
plot(t,h);
xlabel("Time");
ylabel("Impulse response");