Data = load("q1.mat");
len = length(Data.x);

input_signal=Data.x;
N =5;

h = zeros(len,1);

for i = 1:N
    h(i) = 1/N;
end

y = conv(h,Data.x);
y = y(1:len);
k = 1:len;
figure();
subplot(2,2,1);
stem(k,y);
xlabel('N');
ylabel('MA system resonse');
title('MA system resonse for q1.mat file N = 5');


N =10;

h = zeros(len,1);

for i = 1:N
    h(i) = 1/N;
end

y = conv(h,Data.x);
y = y(1:len);
k = 1:len;
subplot(2,2,2);
stem(k,y);
xlabel('N');
ylabel('MA system resonse');
title('MA system resonse for q1.mat file N = 10');


N =15;

h = zeros(len,1);

for i = 1:N
    h(i) = 1/N;
end

y = conv(h,Data.x);
y = y(1:len);
k = 1:len;
subplot(2,2,3);
stem(k,y);
xlabel('N');
ylabel('MA system resonse');
title('MA system resonse for q1.mat file N = 15');


N =50;

h = zeros(len,1);

for i = 1:N
    h(i) = 1/N;
end

y = conv(h,Data.x);
y = y(1:len);
k = 1:len;
subplot(2,2,4);
stem(k,y);
xlabel('N');
ylabel('MA system resonse');
title('MA system resonse for q1.mat file N = 50');
