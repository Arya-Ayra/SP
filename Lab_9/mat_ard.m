

len_z = length(z);
for ii = 1:len_z

    playTone(a , 'D5', z(ii) , 0.1);
    pause(0.01);
end