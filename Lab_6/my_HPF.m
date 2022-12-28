function B = my_HPF(A, wo_FS , wc)
    len = length(A);
    N = (len - 1)/2;
    N = floor(N);
    n = wc / wo_FS;
    n = floor(n);

    filter_signal = ones(len,1);
    
    for ii = -n+N+1 : n+N+1
        filter_signal(ii) = 0;
    end

    B = filter_signal .* A;
end

