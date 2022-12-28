
n = -100 : 100;
wc = pi/16;
x = (1/(2*pi))*int(exp(1j * w * n) , w, -wc ,wc);
figure();
subplot(2,2,1);
plot(n , real(x));
xlabel('n');
ylabel('Inverse DTFT');
title('Inverse DTFT at wc = pi/16');

wc = pi/8;
x = (1/(2*pi))*int(exp(1j * w * n) , w, -wc ,wc);
subplot(2,2,2);
plot(n , real(x));
xlabel('n');
ylabel('Inverse DTFT');
title('Inverse DTFT at wc = pi/8');

wc = pi/4;
x = (1/(2*pi))*int(exp(1j * w * n) , w, -wc ,wc);
subplot(2,2,3);
plot(n , real(x));
xlabel('n');
ylabel('Inverse DTFT');
title('Inverse DTFT at wc = pi/4');

wc = pi/2;
x = (1/(2*pi))*int(exp(1j * w * n) , w, -wc ,wc);
subplot(2,2,4);
plot(n , real(x));
xlabel('n');
ylabel('Inverse DTFT');
title('Inverse DTFT at wc = pi/2');
