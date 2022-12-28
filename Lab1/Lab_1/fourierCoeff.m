%fourierCoeff(t,xt,T,t1,t2,N)
function F = fourierCoeff(t,xt,T,t1,t2,N)
 
    wo = 2*pi/T;
    

    F = zeros(2*N+1);
    
    for K= -1*N : 1*N
        expr = xt*exp(-1*1i*K*wo*t);
        val = 1/T* (int(expr , t , [t1,t2]));
            F(K+N+1) = val;
    end
end
