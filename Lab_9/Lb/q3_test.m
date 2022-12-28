a=0.4;
d = 0.2;
sd = 0.3;
r = 0.1;
s = 0.5;
fs = 10000;
[t_env, env] = envelope(a,d,s,sd,r,fs);
plot(t_env,env);