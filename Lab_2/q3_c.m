r = 0.95;
X = 0;
b = [1 , -1*2*cos(X), 1];
a = [1 , -1*2*r*cos(X) , r*r];

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
ylabel("Magnitude at theta = 0");


r = 0.95;
X = pi/4;
b = [1 , -1*2*cos(X), 1];
a = [1 , -1*2*r*cos(X) , r*r];

[val,w] = freqz(b,a,n);

len = length(val);
%plot(w , abs(val));
for i = 1:len
    val(i) = abs(val(i));
end


subplot(2,2,2);
plot(w , val,"black",LineWidth=1.5);
xlabel("Angular frequency");
ylabel("Magnitude at theta = pi/4");


r = 0.95;
X = 3*pi/4;
b = [1 , -1*2*cos(X), 1];
a = [1 , -1*2*r*cos(X) , r*r];

[val,w] = freqz(b,a,n);

len = length(val);
%plot(w , abs(val));
for i = 1:len
    val(i) = abs(val(i));
end



subplot(2,2,3);
plot(w , val,"black",LineWidth=1.5);
xlabel("Angular frequency");
ylabel("Magnitude at theta = 3*pi/4");


r = 0.95;
X = pi;
b = [1 , -1*2*cos(X), 1];
a = [1 , -1*2*r*cos(X) , r*r];

[val,w] = freqz(b,a,n);

len = length(val);
%plot(w , abs(val));
for i = 1:len
    val(i) = abs(val(i));
end



subplot(2,2,4);
plot(w , val,"black",LineWidth=1.5);
xlabel("Angular frequency");
ylabel("Magnitude at theta = pi");
