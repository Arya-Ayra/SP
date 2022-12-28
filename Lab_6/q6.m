t_fine = -10 : 0.001:10;
len_t_fine = length(t_fine);
xt = zeros(len_t_fine,1);

for ii = -1 : 0.001: 1
    
        xt(   floor((ii+10)*1000 + 1) ) = 1 - abs(ii);
   
end
% figure();
% plot(t_fine , xt);




% 
% figure();
% plot(t_fine , xt1);

TS = 0.5 ;
%impulse train.
len = length(t_fine);
impulse_train = zeros(1, len);

for ii = -1:TS:1
    idx = (ii+10)*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end
xt1 = xt .* impulse_train;
figure();
subplot(2,2,1);
nz = -10:TS:10;
y1 = sinc_recon1(nz , xt1, TS , t_fine);
plot(t_fine , y1);


TS = 0.2 ;
%impulse train.
len = length(t_fine);
impulse_train = zeros(1, len);

for ii = -1:TS:1
    idx = (ii+10)*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end
xt1 = xt .* impulse_train;
figure();
subplot(2,2,1);
nz = -10:TS:10;
y1 = sinc_recon1(nz , xt1, TS , t_fine);
plot(t_fine , y1);


TS = 0.1 ;
%impulse train.
len = length(t_fine);
impulse_train = zeros(1, len);

for ii = -1:TS:1
    idx = (ii+10)*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end
xt1 = xt .* impulse_train;
figure();
subplot(2,2,1);
nz = -10:TS:10;
y1 = sinc_recon1(nz , xt1, TS , t_fine);
plot(t_fine , y1);



TS = 0.05 ;
%impulse train.
len = length(t_fine);
impulse_train = zeros(1, len);

for ii = -1:TS:1
    idx = (ii+10)*1000+1;
    idx = floor(idx);
    impulse_train(idx) = 1;
end
xt1 = xt .* impulse_train;
figure();
subplot(2,2,1);
nz = -10:TS:10;
y1 = sinc_recon1(nz , xt1, TS , t_fine);
plot(t_fine , y1);