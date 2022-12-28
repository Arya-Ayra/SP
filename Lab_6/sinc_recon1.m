function xr = sinc_recon1(nz,x,Ts,t_fine)
   wc = pi/Ts;
   len = length(t_fine);
   xr = zeros(len , 1);
   len_nz = length(nz);
   %for n = 0:Ts:2
   for index = 1:len_nz
       n = nz(index);
        for t = 1:len
            idx = floor(((n-nz(1))*1000)+1);

            exp = Ts*x(idx)*sin(wc * (t_fine(t)- n));
            if(t_fine(t) ~= n)
                xr(t) = xr(t) + exp / (pi*(t_fine(t) -  n));
            end

        end
   end
end

