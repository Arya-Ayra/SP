t = 0:0.0002:1;
[x , Fs ] = audioread('f1.wav');
% sound(x);
% pause(3);
a=1;
b = 3;
y = quadratic_quant(x,b,a);
sound(y);