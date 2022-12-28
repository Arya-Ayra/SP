t = 0:0.0002:1;
x = sin(2*pi*10*t);
a=1;

anss = zeros(8,1);

for i=1:8
    y = quadratic_quant(x,i,a);
    error =  abs(x - y);
    anss(i) = max(error);
end
stem(n , anss);
xlabel('b');
ylabel('maximum absolute quantization error')
