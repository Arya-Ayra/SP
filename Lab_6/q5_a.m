t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);
original = xt;
original = transpose(original);
TS = 0.1 ;
%impulse train.
len = length(t_fine);
impulse_train = zeros(1, len);

for ii = 0:TS:2
    idx = ii*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end

xt = xt .* impulse_train;

subplot(2,2,1);
plot(t_fine , xt);
xlabel("t");
ylabel("Sampled Signal");
title("Sampled Signal");


n = length(t_fine);
prev = 0;
lis = zeros(n, 1);
for i = 1:n
    if xt(i) == 0
        lis(i) = prev;
    else
        prev = xt(i);
        lis(i) = prev;
    end
end

subplot(2,2,2);
plot(t_fine , lis);
xlabel("t");
ylabel("0 order interpolation Signal");
title("0 order interpolation Signal");

x = 0:TS:2;
v = cos(5*pi*x) + sin(10*pi*x);
xx = 0:0.001:2;
liner_interp = interp1(x,v,xx);
subplot(2,2,3);
plot(xx , liner_interp);
liner_interp = transpose(liner_interp);
xlabel("t");
ylabel("linear interpolation Signal");
title("linear interpolation Signal");

subplot(2,2,4);
n = 0:TS:2;
xr = sinc_recon1(n,xt,TS, t_fine);
plot(t_fine,xr);
xlabel("t");
ylabel("sinc interpolation Signal");
title("sinc interpolation Signal");


%MAE
Mag_val = abs(lis - original);
MAE = max(Mag_val(251:1751));
disp("For 0 interpolation:");
disp(MAE);

Mag_val = abs(liner_interp - original);
MAE = max(Mag_val(251:1751));
disp("For linear interpolation:");
disp(MAE);


Mag_val = abs(xr - original);
MAE = max(Mag_val(251:1751));
disp("For sinc interpolation:")
disp(MAE);

