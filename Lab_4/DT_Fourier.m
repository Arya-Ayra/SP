function X = DT_Fourier(x , N0 , w)
    %n0 -> 0 , no -1 -> -1 , 1 = n0-t -> t = n0-1 *****  n0 +1 -> 1 , n0+t = len(x)
    %t = len(x) - n0,
    %first index -> 1 - n0 -> n0 - > lne(x) - n0

    len_x = length(x);
    X = 0;
    for i = 1:len_x
        Z = x(i)* exp(-1*(1i)*w*(i-N0));
        X = X + Z;
    end
end

