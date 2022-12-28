b = [1];
a = [1,0.1];

zplane(a,b);%z->a coloumn vector with values of all Zeroes, P->a coloumn vector with values of poles
n=1001;
[val,w] = freqz(b,a,n);

len = length(val);
%plot(w , abs(val));
for i = 1:len
    val(i) = abs(val(i));
end


figure();
plot(w , val);



[h,t] = impz(b,a);
figure();
plot(t,h);