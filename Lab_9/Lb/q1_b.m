%part b
N=2;
amp = 0.5;
phase = 0;
P = phase*ones(1,N);
fs = 10000;
F=[480,620];
A = amp*ones(1,N);
td=0.5;
b1 = SineSum(A,F,P,td,fs);
z1 = zeros(size(b1));

x2n = 1:length(b1)+length(z1);

for ii=1:length(x2n)
    if(mod(ii,2)==1)
        x2n(ii) = b1(floor(ii/2)+1);
    else
        x2n(ii) = z1(floor(ii/2));
    end
end

x2n = [x2n,x2n,x2n,x2n];
figure()
plot(0:1:499,x2n(1:500));
xlabel("n");
ylabel("x2[n]");
title("x2[n]");
sound(x2n);

