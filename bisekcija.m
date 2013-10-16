function vec = bisekcija(func, pradzia, pabaiga, zingsniai, tikslumas)
    vec = [];
    global ctr;
    zingsnis = (pabaiga - pradzia)/zingsniai;
    for i = pradzia:zingsnis:pabaiga-zingsnis
        if(func(i) * func(i + zingsnis) < 0)
            ctr = 0;
            vec = [vec tikraiBisekcija(func, i, i + zingsnis, tikslumas)];
            ctr
            plot(vec, 0 , '*k');
        else
            if(func(i) == 0)
                vec = [vec i];
                plot(vec, 0*vec, '*k');
            end
        end
    end
end

function v = tikraiBisekcija(func, pradzia, pabaiga, tikslumas)
    plot(pradzia, 0, 'or');
    plot(pabaiga, 0, 'or');
    v = (pradzia + pabaiga) / 2;
    y = func(v);
    zemyn = func(pradzia) > func(pabaiga);
    global ctr;
    ctr = ctr + 1;
    if(abs(y) <= tikslumas)
        return;
    else
       if((zemyn && y > 0) || (~zemyn && y < 0))
           v = tikraiBisekcija(func, v, pabaiga, tikslumas);
       else
           v = tikraiBisekcija(func, pradzia, v, tikslumas);
       end
    end
end