t = 0:0.0002:1;

x = sin(2*pi*10*t);
a=1;
b = 4;

y = quadratic_quant(x,b,a);
subplot(3,1,1);
plot(t , x);
xlabel('t');
ylabel('sampled signal');
title('Input:Sine Wave');
subplot(3,1,2);
plot(t,y);
xlabel('t');
ylabel('Quantised signal');
title('Input:Sine Wave');

error  =  x - y;
subplot(3,1,3);
plot(t,error);
xlabel('t');
ylabel('Quantization error');
title('Input:Sine Wave');
