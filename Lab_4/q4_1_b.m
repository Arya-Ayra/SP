n = -50:50;

%1 - impluse
len_n = length(n);
x = zeros(len_n , 1);
N0 = 51;
x(N0) = 1;

t=-10:0.01:10;
lis=zeros(length(t) , 1);
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of unit implulse');
subplot(2,2,2);
plot(t , angle(lis));
xlabel('w');
ylabel('Phase of DTFT');
title('DTFT of unit implulse');
subplot(2,2,3);
plot(t, real(lis));
xlabel('w');
ylabel('Real part of DTFT');
title('DTFT of unit implulse');
subplot(2,2,4);
plot(t,imag(lis));
xlabel('w');
ylabel('Imaginary part of DTFT');
title('DTFT of unit implulse');

%shifted unit impulse
len_n = length(n);
x = zeros(len_n , 1);
N0 = 51;
x(N0-3) = 1;

t=-10:0.01:10;
lis=zeros(length(t) , 1);
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of shifted unit implulse');
subplot(2,2,2);
plot(t , angle(lis));
xlabel('w');
ylabel('Phase of DTFT');
title('DTFT of shifted unit implulse');
subplot(2,2,3);
plot(t, real(lis));
xlabel('w');
ylabel('Real part of DTFT');
title('DTFT of shifted unit implulse');
subplot(2,2,4);
plot(t,imag(lis));
xlabel('w');
ylabel('Imaginary part of DTFT');
title('DTFT of shifted unit implulse');

%rectangular pilse -3 to 3

n = -30:30;

x = zeros(length(n) , 1);
for i=-3:3
    x(i+31) = 1;
end
N0 = 4;


t=-10:0.01:10;
lis=zeros(length(t) , 1);
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');

title('DTFT of rectangular implulse');
subplot(2,2,2);
plot(t , angle(lis));
xlabel('w');
ylabel('Phase of DTFT');
title('DTFT of rectangular implulse');
subplot(2,2,3);
plot(t, real(lis));
xlabel('w');
ylabel('Real part of DTFT');
title('DTFT of rectangular implulse');
subplot(2,2,4);
plot(t,imag(lis));
xlabel('w');
ylabel('Imaginary part of DTFT');
title('DTFT of rectangular implulse');

%sinusoid
n=-200:200;
len_n = length(n);
N0 = 201;
x = zeros(len_n , 1);
for i = 1:len_n
    x(i) = sin(pi/4 * (i - N0));
end

idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of sin(w0n)');
subplot(2,2,2);
plot(t , angle(lis));
xlabel('w');
ylabel('Phase of DTFT');
title('DTFT of sin(w0n)');
subplot(2,2,3);
plot(t, real(lis));
xlabel('w');
ylabel('Real part of DTFT');
title('DTFT of sin(w0n)');
subplot(2,2,4);
plot(t,imag(lis));
xlabel('w');
ylabel('Imaginary part of DTFT');
title('DTFT of sin(w0n)');


%%%%  DTFT of a^nu[n]
n=0:100;
N0 = 1;
len_x = length(n);
x = zeros(len_x , 1);
a = 0.01;
for i=1:len_x
    x(i) = power(a,i-1);
end
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(n,x);
xlabel('t');
ylabel('Input Signal');
title('Input signal a^nu[n], a = b');
subplot(2,2,3);
plot(t , abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of a^nu[n],a = b.');

n=0:100;
N0 = 1;
len_x = length(n);
x = zeros(len_x , 1);
a = -0.01;
for i=1:len_x
    x(i) = power(a,i-1);
end
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end

subplot(2,2,2);
plot(n,x);
xlabel('t');
ylabel('Input Signal');
title('Input signal a^nu[n], a = -b');
subplot(2,2,4);
plot(t , abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of a^nu[n],a = -b.');



n=0:100;
N0 = 1;
len_x = length(n);
x = zeros(len_x , 1);
a = 0.5;
for i=1:len_x
    x(i) = power(a,i-1);
end
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(n,x);
xlabel('t');
ylabel('Input Signal');
title('Input signal a^nu[n], a = b');
subplot(2,2,3);
plot(t , abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of a^nu[n],a = b.');

n=0:100;
N0 = 1;
len_x = length(n);
x = zeros(len_x , 1);
a = -0.5;
for i=1:len_x
    x(i) = power(a,i-1);
end
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end

subplot(2,2,2);
plot(n,x);
xlabel('t');
ylabel('Input Signal');
title('Input signal a^nu[n], a = -b');
subplot(2,2,4);
plot(t , abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of a^nu[n],a = -b.');

n=0:100;
N0 = 1;
len_x = length(n);
x = zeros(len_x , 1);
a = 0.99;
for i=1:len_x
    x(i) = power(a,i-1);
end
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(n,x);
xlabel('t');
ylabel('Input Signal');
title('Input signal a^nu[n], a = b');
subplot(2,2,3);
plot(t , abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of a^nu[n],a = b.');

n=0:100;
N0 = 1;
len_x = length(n);
x = zeros(len_x , 1);
a = -0.99;
for i=1:len_x
    x(i) = power(a,i-1);
end
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end
subplot(2,2,2);
plot(n,x);
xlabel('t');
ylabel('Input Signal');
title('Input signal a^nu[n], a = -b');
subplot(2,2,4);
plot(t , abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT of a^nu[n],a = -b.');