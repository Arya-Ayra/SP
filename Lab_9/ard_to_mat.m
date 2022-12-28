a= arduino('COM9' , 'Uno');
s = [];
for i= 0:500    
    x = readVoltage(a , 'A0');
    s = [s , x];
    pause (0.001);
end
y = MA_func(s , 10);
% sound(y);
% 
% 
% z= [];
% till = (length(y)/50);
% for i = 1 : floor(till)
%     x = y(50*(i-1) + 1 : min(50*i , length(y)) );
%     fft_x = fft(x);
%     z = [z , max(fft_x)];
% end
% 
% len_z = length(z);
% for ii = 1:len_z
% 
%     playTone(a , 'D8', z(ii) , 0.01);
%     configurePin(a,'D8' , 'Unset');
%     pause(0.1);
% end
% 
% clear a;