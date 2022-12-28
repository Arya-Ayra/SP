function xr = sinc_recon(nz,x,Ts,t_fine)
   wc = pi/Ts;
   len = length(t_fine);
   xr = zeros(len , 1);
      
   for n = 0:Ts:2
        for t = 1:len
            idx = floor(n*1000+1);

            exp = Ts*x(idx)*sin(wc * (t_fine(t)- n));
            if(t ~= n)
                xr(t) = xr(t) + exp / (pi*(t_fine(t) -  n));
            end

        end
   end
end

