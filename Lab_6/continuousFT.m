function X = continuousFT(t,xt,a,b,w)
    expression = xt*exp(-1 * 1i * w * t);
    X = int(expression , t ,a, b);
end

