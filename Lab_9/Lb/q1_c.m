%part c
N=2;
amp = 0.5;
phase = 0;
P = phase*ones(1,N);
fs = 10000;
F=[440,480];
A = amp*ones(1,N);
td=2;
b2 = SineSum(A,F,P,td,fs);
z2 = zeros(size(b2));

x3n = 1:length(b2)+length(z2);

for ii=1:length(x3n)
    if(mod(ii,2)==1)
        x3n(ii) = b2(floor(ii/2)+1);
    else
        x3n(ii) = z2(floor(ii/2));
    end
end

x3n = [x3n,x3n,x3n,x3n];
figure()
plot(0:1:499,x3n(1:500));
xlabel("n");
ylabel("x3[n]");
title("x3[n]");
sound(x3n);