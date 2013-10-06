function r = kvaziNiutono(func, x, h, tikslumas)
    y = func(x);
    while(abs(y) > tikslumas)
        sx = x - ((func(x) - func(x-h))/h)^(-1) * func(x);
        h = sx - x;
        x = sx;
        y = func(x);
    end
    r = x;
end