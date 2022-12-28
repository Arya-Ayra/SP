r = 0.2;
X = pi/3;
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
ylabel("Magnitude at r=0.2");


r = 0.4;
X = pi/3;
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
ylabel("Magnitude at r=0.4");


r = 0.6;
X = pi/3;
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
ylabel("Magnitude at r=0.6");


r = 0.8;
X = pi/3;
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
ylabel("Magnitude at r=0.8");
