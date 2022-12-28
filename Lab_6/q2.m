t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);

plot(t_fine , xt);
ylabel("x(t)");
xlabel("t");
hold on;

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
stem(t_fine , xt);