function vec = skenavimas(func, pradzia, pabaiga, zingsnis, tikslumas)
    vec = [];
    for i = pradzia:zingsnis:pabaiga-zingsnis
        if(func(i) * func(i + zingsnis) < 0)
            if(abs(func(i+zingsnis/2)) <= tikslumas)
                vec = [vec i+zingsnis/2];
            else
                vec = [vec skenavimas(func, i, i + zingsnis, zingsnis/10, tikslumas)];
            end
        end
    end
end