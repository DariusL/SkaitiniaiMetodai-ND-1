function vec = bisekcija(func, pradzia, pabaiga, zingsniai, tikslumas)
    vec = [];
    zingsnis = (pabaiga - pradzia)/zingsniai;
    for i = pradzia:zingsnis:pabaiga-zingsnis
        plot(i, 0, 'or');
        pause(0.05);
        if(func(i) * func(i + zingsnis) < 0)
            vec = [vec tikraiBisekcija(func, i, i + zingsnis, tikslumas)];
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
    v = (pradzia + pabaiga) / 2;
    y = func(v);
    zemyn = func(pradzia) > func(pabaiga);
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