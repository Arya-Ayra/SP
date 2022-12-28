t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine);
len = length(t_fine);
impulse_train = zeros(1, len);

TS = 0.1;

for ii = 0:TS:2
    idx = ii*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end
n = 0:TS:2;
xt = xt .* impulse_train;
subplot(2,2,1);
xr = sinc_recon(n,xt,TS, t_fine);
plot(t_fine,xr);
xlabel("t");
ylabel("sinc interpolation Signal");
title("sinc interpolation Signal  (Ts=0.1)");
hold on;
plot(t_fine,xt);
hold off;

TS = 0.2;
n = 0:TS:2;
for ii = 0:TS:2
    idx = ii*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end

xt = xt .* impulse_train;
subplot(2,2,2);
xr = sinc_recon(n,xt,TS, t_fine);
plot(t_fine,xr);
xlabel("t");
ylabel("sinc interpolation Signal");
title("sinc interpolation Signal  (Ts=0.2)");
hold on;
plot(t_fine,xt);
hold off;


TS = 0.3;
n = 0:TS:2;
for ii = 0:TS:2
    idx = ii*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end

xt = xt .* impulse_train;
subplot(2,2,3);
xr = sinc_recon(n,xt,TS, t_fine);
plot(t_fine,xr);
xlabel("t");
ylabel("sinc interpolation Signal");
title("sinc interpolation Signal  (Ts=0.3)");
hold on;
plot(t_fine,xt);
hold off;

TS = 0.4;
n = 0:TS:2;
for ii = 0:TS:2
    idx = ii*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end

xt = xt .* impulse_train;
subplot(2,2,4);
xr = sinc_recon(n,xt,TS, t_fine);
plot(t_fine,xr);
xlabel("t");
ylabel("sinc interpolation Signal");
title("sinc interpolation Signal  (Ts=0.4)");
hold on;
plot(t_fine,xt);
hold off;