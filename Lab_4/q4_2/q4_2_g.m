n = 0:1000;
len_n = length(n);

input = 5*sin((pi/200)*n);

x =  input + randn(size(input));
figure();
subplot(2,2,1);
plot(n, input,'black', LineWidth=1.5);
xlabel('N');
ylabel('S[N]');
hold on;
plot(n, x);
xlabel('N');
ylabel('X[N] AND S[N]');
title('Ploting X[N](red) and S[N](black)');
hold off;

%defining h[n].
M = 5;
h = zeros(len_n ,1);
h(1) = 1;
h(2) = -1;

y = conv(h , x ,"full");
t = y(1:len_n);
subplot(2,2,2);
plot(n,t);
hold on;
plot(n,input,'red');
xlabel('t');
ylabel('Input and Filtered Signal');
title('Plots for M=5');
hold off;

%defining h[n].
M = 21;
h = zeros(1,len_n);
h(1) = 1;
h(2) = -1;

y = conv(h , x ,"full");
t = y(1:len_n);
subplot(2,2,3);
plot(n,t);
hold on;
plot(n,input,'red');
xlabel('t');
ylabel('Input and Filtered Signal');
title('Plots for M=21');
hold off;

%defining h[n].
M = 51;
h = zeros(len_n ,1);
h(1) = 1;
h(2) = -1;

y = conv(h , x ,"full");
t = y(1:len_n);
subplot(2,2,4);
plot(n,t);
hold on;
plot(n,input,'red');
xlabel('t');
ylabel('Input and Filtered Signal');
title('Plots for M=51');
hold off;

% t->is the filtered signal, unfiltered -> x.

N0 = 1;
M = 5;
h = zeros(len_n ,1);
h(1) = 1;
h(2) = -1;

y = conv(h , x ,"full");
t=-10:0.01:10;
y = y(1:len_n);
lis=zeros(length(t) , 1);
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(y ,N0, w);
    idx= idx+1;
end
figure();
subplot(2,2,1);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT for filtered signal M=5');

M = 21;
h = zeros(len_n ,1);
h(1) = 1;
h(2) = -1;

y = conv(h , x ,"full");
t=-10:0.01:10;
y = y(1:len_n);
lis=zeros(length(t) , 1);
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(y ,N0, w);
    idx= idx+1;
end


subplot(2,2,2);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT for filtered signal M=21');

M = 51;
h = zeros(len_n ,1);
h(1) = 1;
h(2) = -1;

y = conv(h , x ,"full");
t=-10:0.01:10;
y = y(1:len_n);
lis=zeros(length(t) , 1);
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(y ,N0, w);
    idx= idx+1;
end

subplot(2,2,3);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT for filtered signal M=51');




t=-10:0.01:10;

lis=zeros(length(t) , 1);
idx=1;
for w = -10:0.01:10
    lis(idx) = DT_Fourier(x ,N0, w);
    idx= idx+1;
end

subplot(2,2,4);
plot(t,abs(lis));
xlabel('w');
ylabel('Magnitude of DTFT');
title('DTFT for noicy signal.');

