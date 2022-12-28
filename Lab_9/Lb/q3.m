fs = 10000;
N=5;
f0=50;
A = 1:N;
for k=1:N
    A(k) = 1/(k*k);
end
td = 1;
P=zeros(size(A));
xn = harmonics(A,f0,P,td,fs);
[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,fs);
soundsc(xn,fs);
pause(3);
soundsc(xn.*env,fs);

subplot(3,1,1);
plot(t_env,xn);

subplot(3,1,2);
plot(t_env,env);

subplot(3,1,3);
plot(t_env,xn.*env);
