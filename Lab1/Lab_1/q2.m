time_grid = -0.5:0.01:0.5;

T = 1;
N = 5;
t1 = 0;
t2 = 1;
syms t;

xt = 2*cos(2*pi*t) + cos(6*pi*t);

A = fourierCoeff(t,xt,T,t1,t2,N);

Y = partialfouriersum(A , T , time_grid);

xt = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);

figure();
subplot(1,2,1);
plot(time_grid , Y, 'black', LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Reconstructed signal of x(t)');
grid on;
subplot(1,2,2)
plot(time_grid , xt, 'red', LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Orignal signal of x(t)');
grid on;

%hold on;
%plot(time_grid , xt, 'black', LineWidth=1.5);
%hold off;

s = length(time_grid);

MAE = 0;
MSE = 0;
 for i = 1:s
     MSE = MSE + (Y(i) - xt(i)) * (Y(i) - xt(i));
    if MAE < abs(Y(i) - xt(i))
        MAE = abs(Y(i) -  xt(i));
    end
end
disp("MAE(Maximum absolute error: ");
disp(MAE);
disp("RMS Error: ");
disp(sqrt(MSE/s));