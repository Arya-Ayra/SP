nn = 0:200;
x = cos(pi*nn/16) + 0.25*sin(pi*nn/16);

n = 0:1:50;
nc = 25;
h = zeros(51,1);

for ii=0:50
    if n(ii+1) == nc
        h(ii+1) = 0.165;
        continue;
    end
    h(ii+1) = sin((pi/6)*(n(ii+1)-nc))/((pi)*(n(ii+1)-nc));
end
h = conv(h , x);
len = length(h);
n = 0:len-1;
subplot(2,1,1);
plot(n , h);
xlabel('n');
ylabel('h[n]');
title('using rectangular window');

nn = 0:200;
x = cos(pi*nn/16) + 0.25*sin(pi*nn/16);

n = 0:1:50;
nc = 25;
h = zeros(51,1);

for ii=0:50
    if n(ii+1) == nc
        h(ii+1) = 0.165;
        continue;
    end
    h(ii+1) = sin((pi/6)*(n(ii+1)-nc))/((pi)*(n(ii+1)-nc));
end
window = blackman(51);
h = window.*h;
h = conv(h , x);
len = length(h);
n = 0:len-1;
subplot(2,1,2);
plot(n , h);
xlabel('n');
ylabel('h[n]');
title('using blackman window');
