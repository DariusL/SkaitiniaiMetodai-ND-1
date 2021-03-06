function vec = skenavimas(func, pradzia, pabaiga, zingsniai, tikslumas)
    vec = [];
    global ctr;
    zingsnis = (pabaiga - pradzia)/zingsniai;
    for i = pradzia:zingsnis:pabaiga-zingsnis
        plot(i, 0, 'or');
        ctr = ctr + 1;
        if(func(i) * func(i + zingsnis) < 0)
            if(abs(func(i+zingsnis/2)) <= tikslumas)
                vec = [vec i+zingsnis/2];
                plot(vec, 0 , '*k');
            else
                vec = [vec skenavimas(func, i, i + zingsnis, 10, tikslumas)];
                plot(vec, 0*vec, '*k');
            end
        else
            if(func(i) == 0)
                vec = [vec i];
                plot(vec, 0*vec, '*k');
            end
        end
    end
end