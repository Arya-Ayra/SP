b = [1 , -2];
a = [1 , -0.5];

figure();
subplot(2,2,1);
zplane(b,a);%z->a coloumn vector with values of all Zeroes, P->a coloumn vector with values of poles

n=1001;
[val,w] = freqz(b,a,n);

len = length(val);
%plot(w , abs(val));
for i = 1:len
    val(i) = abs(val(i));
end

subplot(2,2,2);
plot(w , val);
xlabel("Angular frequency");
ylabel("Magnitude");


[h,t] = impz(b,a);
subplot(2,2,3);
plot(t,h);
xlabel("Time");
ylabel("Impulse response");