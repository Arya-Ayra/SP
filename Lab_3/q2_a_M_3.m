n = 100;
input_signal = zeros(n,1);
M = 3;
for i = 1:n
    if mod(i,M) == 0
        input_signal(i) = i/M;
    end
    
end

lis = in_0(input_signal);
k = 1:100;
subplot(1,2,1);
stem(k , lis, 'black');
xlabel('N');
ylabel('0 order interpolation');
title('N=100, M=3, y=n/M');
%%%%%%


x = 0:M:length(input_signal);

len_x = length(x);

v = zeros(len_x);
for i = 1:len_x
    v(i) = (i-1); 
end

xq = 0:length(input_signal);

vq1 = interp1(x,v,xq,'linear');
k = 0:length(vq1)-1;
subplot(1,2,2);
stem(k, vq1, 'red');
xlabel('N');
ylabel('linear interpolation');
title('N=100, M=3, y=n/M');


