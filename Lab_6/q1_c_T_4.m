syms t;
w = -5:0.1:5;

xt= 1;
T = 4;
a =-T;
b = T;
figure();
subplot(2,2,1);

X = continuousFT(t , xt , a, b, w);
Y =real(X);
plot(w,Y);
xlabel("w");
ylabel("Real(CTFT)");
title("X(t) = 1, for t = [-4,4]");

subplot(2,2,2);


Y =imag(X);
plot(w,Y);
xlabel("w");
ylabel("Imaginary(CTFT)");
title("X(t) = 1, for t = [-4,4]");

subplot(2,2,3);


Y =abs(X);
plot(w,Y);
xlabel("w");
ylabel("Magnitude(CTFT)");
title("X(t) = 1, for t = [-4,4]");

subplot(2,2,4);


Y =angle(X);
plot(w,Y);
xlabel("w");
ylabel("Phase(CTFT)");
title("X(t) = 1, for t = [-4,4]");


