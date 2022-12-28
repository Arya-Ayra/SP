t = 0:0.0002:1;
[x , Fs ] = audioread('f1.wav');
a=1;
b = 3;
y = quadratic_quant(x,b,a);
sound(y);

for i=1:8
    b = i;
    y = quadratic_quant(x,b,a);
    sound(y);
    pause(35);
end