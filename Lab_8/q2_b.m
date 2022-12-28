ro = 0.9;
bo = (1+ro*ro - 2*ro*cos(pi/4)) / (2-2*cos(pi/4));
a = [1 2*ro*cos(pi/4) ro*ro];
b = bo*[1 2*cos(pi/4) 1];

freqz(b , a, 2001);


