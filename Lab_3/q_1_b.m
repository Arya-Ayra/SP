u = ones(101 , 1);
N = 5;
lis = MA_func(u,N);
k = 0:100;
stem(k , lis , "black");
ylabel('Moving average of u[n]');
xlabel('n');
title('Moving average of u[n]');