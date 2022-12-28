b = 1;
a = [1,-0.5 , 0.2 , -0.1, 0.007 , 0.14 , 0.15];

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
