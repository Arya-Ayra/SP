k= 1:1000;
x = 5*sin(100*k);
len = length(k);
y = zeros(len);

 for i = 1:len
    y(i) = cos(20000*i)*x(i);
 end

plot( k, y);
xlabel('n');
ylabel('y[n]');
title('The modulated signal (AM system)');