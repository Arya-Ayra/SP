p = 0.8;
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
plot(w , val,"black",LineWidth=1.5);
xlabel("Angular frequency");
ylabel("Magnitude");


