function Y = partialfouriersum(A , T , time_grid)
    
    wo = 2*pi/T;
    N = (length(A)-1)/2;
    Y = zeros(size(time_grid));

    for k = 1:2*N+1 %starts from 1, we want to have -k,  
        express = exp((1i)*(k-1-N)*wo*time_grid);
        Y = Y + A(k)*express;  
    end
end
