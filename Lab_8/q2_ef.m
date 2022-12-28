fs = 8192;
t = 0:1/8192:2-(1/fs);
x = rand(1,2*fs) - 0.5;
% sound(x , fs);
% pause(2.5);

t_print = t(1:100);
print_x = x(1:100);
subplot(2,2,1);
plot(t_print,print_x);
xlabel('time');
ylabel('input signal');
title('𝑟𝑎𝑛𝑑(1, 2 ∗ 𝑓𝑠) − 0.5');



x = x + sin(2*pi*1024*t);
print_x = x(1:100);
subplot(2,2,3);
plot(t_print,print_x);
xlabel('time');
ylabel('input signal');
title('original signal');
% sound(x);
% pause(2.5);
a=[1];
b = (1/(2-sqrt(2)))*[1 -sqrt(2) 1];
y=filter(b,a,x);

print_x = y(1:100);
subplot(2,2,2);
plot(t_print,print_x );
xlabel('time');
ylabel('output signal');
title('using a fir filter');

% sound(y);
% pause(2.5);

r0 = 0.5;
w0 = pi/4;

b0 = (1-(r0*exp(1j*w0)))*(1-(r0*exp(-1j*w0)));
b = [b0,-b0*2*cos(w0),b0];
a = [1,-r0*2*cos(w0), r0*r0];
y=filter(b,a,x);

print_x = y(1:100);
subplot(2,2,4);
plot( t_print , print_x );
xlabel('time');
ylabel('output signal');
title('using a iir filter');
% sound(y);