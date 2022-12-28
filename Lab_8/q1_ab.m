n = 0:1:50;
nc = 25;
h = zeros(51,1);

% h = sin(pi*(n - nc))/(pi*(n - nc));

for ii=0:50
    if n(ii+1) == nc
        h(ii+1) = 0.165;
        continue;
    end
    h(ii+1) = sin((pi/6)*(n(ii+1)-nc))/((pi)*(n(ii+1)-nc));
end


yy = fft(h , 1001);
y = abs(fftshift(yy));
max_y = max(y);
y = y/max_y;

t = -500:500;
t = (2*pi/1001)*t;
subplot(3,1,1);
plot(n , h);
xlabel('n');
ylabel('h[n]');
title('h[n] = hd[n]w[n]');

subplot(3,1,2);
y = 20 * log(y);
plot(t , y);
ylim([-100,10]);
xlabel('w');
ylabel('Decibles');
title('1001 pt DFT of h[n]');

subplot(3,1,3);
yy = angle(yy);
plot(t,yy);
xlabel('w');
ylabel('Angle');
title('Angle of 1001 pt DFT of h[n]');
