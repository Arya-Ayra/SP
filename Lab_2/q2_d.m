p = -0.8;
b = [1];
a = [1,p];

n=1001;
[val,w] = freqz(b,a,n);

len = length(val);
%plot(w , abs(val));
for i = 1:len
    val(i) = abs(val(i));
end


figure();
subplot(2,2,1);
plot(w , val,"black",LineWidth=1.5);
xlabel("Angular frequency");
ylabel("Magnitude");
title("freqz() response for p = -0.8");

p = 0.1;
b = [1];
a = [1,p];
n=1001;
[val,w] = freqz(b,a,n);

len = length(val);
%plot(w , abs(val));
for i = 1:len
    val(i) = abs(val(i));
end

subplot(2,2,2);
plot(w , val,"black",LineWidth=1.5);
xlabel("Angular frequency");
ylabel("Magnitude");
title("freqz() response for p = 0.1");

p = -0.8;
b = [1];
a = [1,p];

[h,t] = impz(b,a);
subplot(2,2,3);
plot(t,h);
xlabel("Time");
ylabel("h(t)");
title("Impulse response for p = -0.8");

p = 0.1;
b = [1];
a = [1,p];

[h,t] = impz(b,a);
subplot(2,2,4);
plot(t,h);
xlabel("Time");
ylabel("h(t)");
title("Impulse response for p = 0.1");