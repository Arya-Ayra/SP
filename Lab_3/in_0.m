function lis = in_0(input_signal)
    n = length(input_signal);
    prev = 0;
    lis = zeros(n, 1);
    for i = 1:n
        if input_signal(i) == 0
            lis(i) = prev;
        else
            prev = input_signal(i);
            lis(i) = prev;
        end
        
    end
end

