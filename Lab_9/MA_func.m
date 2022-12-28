function lis_final = MA_func(input_signal,N)
    n = length(input_signal);
    sum_yet = 0;
    for i=1:n
        sum_yet = sum_yet + input_signal(i);
        input_signal(i) = sum_yet;
    end
    
    %modified array is created which contains sum till a value.
    lis_final = zeros(n,1);
    for i = 1:N
        lis_final(i) = input_signal(i)/N;
    end

    for i = N+1: n
        lis_final(i) = (input_signal(i) - input_signal(i-N)) / N;
    end
end

