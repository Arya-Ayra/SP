%part a
figure()
N=2;
amp = 0.5;
phase = 0;
P = phase*ones(1,N);
td=4;
fs = 10000;
F=[350,440];
A = amp*ones(1,N);

[x1n] = SineSum(A,F,P,td,fs);
subplot(3,1,1);
plot(0:1:499,x1n(1:500));
xlabel("n");
ylabel("x1[n]");
title("x1[n]");

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
subplot(3,1,2);
plot(0:1:499,x2n(1:500));
xlabel("n");
ylabel("x2[n]");
title("x2[n]");

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
subplot(3,1,3);
plot(0:1:499,x3n(1:500));
xlabel("n");
ylabel("x3[n]");
title("x3[n]");
