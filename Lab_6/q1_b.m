syms t;
w = -5:0.1:5;

xt= 1;

a =-2;
b = 2;
figure();
subplot(2,2,1);

X = continuousFT(t , xt , a, b, w);
X =real(X);
plot(w,X);
xlabel("w");
ylabel("Real(CTFT)");
title("X(t) = 1, for t = [-2,2]");

subplot(2,2,2);

X = continuousFT(t , xt , a, b, w);
X =imag(X);
plot(w,X);
xlabel("w");
ylabel("Imaginary(CTFT)");
title("X(t) = 1, for t = [-2,2]");

subplot(2,2,3);

X = continuousFT(t , xt , a, b, w);
X =abs(X);
plot(w,X);
xlabel("w");
ylabel("Magnitude(CTFT)");
title("X(t) = 1, for t = [-2,2]");

subplot(2,2,4);

X = continuousFT(t , xt , a, b, w);
X =angle(X);
stem(w,X);
xlabel("w");
ylabel("Phase(CTFT)");
title("X(t) = 1, for t = [-2,2]");


