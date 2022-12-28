a= arduino('COM9' , 'Uno');
s2 = [];
for i= 0:1000    
    x = readVoltage(a , 'A0');
    s2 = [s2 , x];
    pause (0.002);
end


y2 = MA_func(s2 ,20);