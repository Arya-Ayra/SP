Data = load("q2_1.mat"); %FILE_NAME.
len = length(Data.x);

input_signal=Data.x;
M = 3; % M -> 2 OR 3.
y = zeros(len*M , 1);

for i = 1:len
    y(i*M) = input_signal(i);
end

k= 1:len*M;
out_0 = in_0(y);
subplot(1,2,1);
stem(k, out_0, 'black');
xlabel('N');
ylabel('0 order interpolation');
title('M=3, FILE:q2_1.mat');


%%% linear interpolation.
len = len*M;
x = M:M:len;
len_x = length(x);

v = zeros(len_x);

for i = 2:len_x
    v(i) = y((i-1)*M);
end

xq = M:len;

vq1 = interp1(x,v,xq,'linear');
k = 0:length(vq1)-1;
subplot(1,2,2);
stem(k, vq1);
xlabel('N');
ylabel('Linear interpolation');
title('M=3, FILE:q2_1.mat');


%%%%%%%%

input_signal=vq1;
k = 1:length(vq1);


N =20;
returned_lis = MA_func(input_signal,N);
figure();
stem(k, returned_lis);

