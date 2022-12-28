function B = NonIdeal(A , w0_FS , G , a)
    N = (length(A) - 1)/2;
    H = zeros(length(A),1);
    for ii = -N:N
        H(ii + N + 1) = G / (a + ii*w0_FS); 
    end

    B = H .* A;
end

