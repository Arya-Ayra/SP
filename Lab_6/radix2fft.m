function v = radix2fft(x)
    N = length(x);
    wn = exp(-1  * 1i * 2*pi / N);
    if(N==2)

        v= [];
        v = [v , x(1) + x(2)];
        v = [v , x(1) - x(2)];

        return
    end
    v1 = [];
    v2 = [];
    for q = 1:N
        if(mod(q,2) == 0 )
            v2 = [v2 , x(q)];
        else
            v1 = [v1 , x(q)];
        end
    end
    v1 = radix2fft(v1);
    v2 = radix2fft(v2);
%     l1 = length(v1)
%     l2 = length(v2)
    v = [];
    for q = 1:N/2
        v = [v , power(wn , q-1)*v2(q) + v1(q)];
    end

    for q = 1:N/2
        v = [v , -1*power(wn , q-1)*v2(q) + v1(q)];
    end
end

