function [N, ROC, C, S] = roc_cs(p)
    
    mag = [];
    len = length(p);
    for i = 1:len
        x = abs(p(i));
        
        if x==0
            continue;
        end

        curr_len_mag = length(mag);
        b = 0;
        for k = 1:curr_len_mag
            if mag(k) == x
                b = b + 1;
                break;
            end
        end

        if(b==0)
            mag = [mag , x];
        end

    end

    %disp(mag);
    mag = sort(mag);
    %disp(mag);

    N = length(mag)+1;
    ROC = zeros(N,2);
    
    if(N-1 ~= 0)
        %N-1 is the length of mag array.
        C=zeros(N,1);
        C(N,1) = 1;
        S =zeros(N,1);

        ROC(1,1) = 0;
        ROC(1,2) = mag(1);
        if mag(1) > 1 
            S(1,1) = 1;
        end
        for i = 2:N-1
            ROC(i,1)= mag(i-1);
            ROC(i,2)= mag(i)  ;
            if( mag(i-1) < 1 && mag(i) > 1)
                S(i,1) = 1;
            end
        end

        ROC(N,1) = mag(N-1);
        ROC(N,2) = inf;
        if mag(N-1) < 1
            S(N,1) = 1;
        end
    else
        N = 1;
        ROC = [0,Inf];
        C = 1;
        S = 1;
    end
    
end






