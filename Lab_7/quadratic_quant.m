function y = quadratic_quant(x , B , a)
   
   num_div = power(2 , B-1);

   each_div = 1/num_div;
  
   n = length(x);
    
   y  = zeros(1,n);

   for i = 1:n
       ele = x(i);
       neg = 0;
       if ele < 0
           neg = 1;
       end
        
       ele=  abs(ele);
       
       count = 1;
       while a*count*each_div*count*each_div < ele
        count = count  +    1;
       end
       
       %take in count-1,  count.
       mid = (a*count*each_div*count*each_div + a*(count-1)*each_div*(count-1)*each_div)/2;
       if neg == 1
           mid = -mid;
       end
        
       y(i) = mid;
   end
end

