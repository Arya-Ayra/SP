syms t;
w = -5:0.1:5;

xt= 1;
T = 1;
a =-T;
b = T;
figure();
subplot(2,2,1);

X = continuousFT(t , xt , a, b, w);
X =real(X);
plot(w,X);
xlabel("w");
ylabel("Real(CTFT)");
title("X(t) = 1, for t = [-1,1]");

subplot(2,2,2);

X = continuousFT(t , xt , a, b, w);
X =imag(X);
plot(w,X);
xlabel("w");
ylabel("Imaginary(CTFT)");
title("X(t) = 1, for t = [-1,1]");

subplot(2,2,3);

X = continuousFT(t , xt , a, b, w);
X =abs(X);
plot(w,X);
xlabel("w");
ylabel("Magnitude(CTFT)");
title("X(t) = 1, for t = [-1,1]");

subplot(2,2,4);

X = continuousFT(t , xt , a, b, w);
X =angle(X);
plot(w,X);
xlabel("w");
ylabel("Phase(CTFT)");
title("X(t) = 1, for t = [-1,1]");


