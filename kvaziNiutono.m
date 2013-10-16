function x = kvaziNiutono(func, x, h, tikslumas)
    y = func(x);
    global ctr;
    ctr = 0;
    while(abs(y) > tikslumas)
        ctr = ctr + 1;
        plot(x, y, 'or');
        sx = x - func(x) / ((func(x) - func(x-h))/h);
        h = sx - x;
        x = sx;
        y = func(x);
    end
    ctr
end