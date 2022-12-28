t = 0:0.0002:1;
x = sin(2*pi*10*t);
a=1;

anss = zeros(8,1);
len = length(t);
for i=1:8
    y = quadratic_quant(x,i,a);
    error =  abs(x - y);
    sum1 =0 ;
    sum2 = 0;
    for j = 1:len
        sum1 = sum1+ power(x(j),2);
        sum2 = sum2 + power(error(j),2);
    end
    anss(i) = sum1/sum2;
end
stem(n , anss);
xlabel('b');
ylabel('Signal to Quantization Noise Ratio (SQNR) ')
title('SQNR');