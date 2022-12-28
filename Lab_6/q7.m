[y , Fs ] = audioread('f1.wav');
disp('Bit rate for file 1:')
disp(256);
disp('Sampling Frequency for file 1');
disp(Fs);
dur  = (length(y) - 1)/Fs;
disp('Duration for file 1')
disp(dur);


[y , Fs ] = audioread('f2.wav');
disp('Bit rate for file 2:')
disp(512);
disp('Sampling Frequency for file 2');
disp(Fs);
dur  = (length(y) - 1)/Fs;
disp('Duration for file 2')
disp(dur);



[y , Fs ] = audioread('f1.wav');
disp('Bit rate for file 3:')
disp(1411);
disp('Sampling Frequency for file 3');
disp(Fs);
dur  = (length(y) - 1)/Fs;
disp('Duration for file 3')
disp(dur);


[y , Fs ] = audioread('f4.wav');
disp('Bit rate for file 4:')
disp(1411);
disp('Sampling Frequency for file 4');
disp(Fs);
dur  = (length(y) - 1)/Fs;
disp('Duration for file 4')
disp(dur);


[y , Fs ] = audioread('f1.wav');
sound(y , 0.8*Fs);

