r = 1.5;
X = pi/3;
b = [1 , -1*2*cos(X), 1];
a = [1 , -1*2*r*cos(X) , r*r];

subplot(1,2,1);
zplane(b,a);

r = 1.5;
X = 2*pi/3;
b = [1 , -1*2*cos(X), 1];
a = [1 , -1*2*r*cos(X) , r*r];

subplot(1,2,2);
zplane(b,a);