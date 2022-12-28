M=16;
F_notes = [392,493,554,370];
F_notes = [F_notes, F_notes, F_notes];
Fn = [329,329,293,293];
F_notes = [F_notes, Fn];
td_notes = 0.25*ones(1,3);
td_notes = [td_notes, 0.8];
td_notes = [td_notes, td_notes, td_notes,td_notes];
N=5;
k=1:N;
ak = 10*exp(k);
P = zeros(1,N);fs = 10000;
adsr = [0.2,0.2,0.7,0.4,0.2];

yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn,fs);
audiowrite('raabta.wav', yn,fs);