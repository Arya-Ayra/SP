n = -50:50;
w1 = pi/8;
w2 = pi/4;
syms w;
x = 1/(2*pi)*(int(exp(1i*w*n) , w , -w1 , -w2) + int(exp(1i*w*n) , w , w1 , w2));

plot(n , imag(x));
xlabel('N');
ylabel('Imaginary part of Inverse DTFT');
title('Inverse DTFT w1 = pi/8 and w2 = pi/4');