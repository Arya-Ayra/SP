Data = load("q1.mat");
len = length(Data.x);
input_signal=Data.x;
k = 1:len;


N =5;
returned_lis = MA_func(input_signal,N);
subplot(2,2,1);
stem(k, returned_lis);
xlabel('N');
ylabel('MA for N=5');
title('Moving average for N = 5')


N =10;
returned_lis = MA_func(input_signal,N);
subplot(2,2,2);
stem(k, returned_lis);
xlabel('N');
ylabel('MA for N=10');
title('Moving average for N = 10')


N =15;
returned_lis = MA_func(input_signal,N);
subplot(2,2,3);
stem(k, returned_lis);
xlabel('N');
ylabel('MA for N=15');
title('Moving average for N = 15')


N =50;
returned_lis = MA_func(input_signal,N);
subplot(2,2,4);
stem(k, returned_lis);
xlabel('N');
ylabel('MA for N=50');
title('Moving average for N = 50')


