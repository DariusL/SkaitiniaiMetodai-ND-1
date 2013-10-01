function rVec = tikslesnis(koef)
    rVec = [-grubus(koef), grubus(koef)];
    B = getB(koef);
    k = getK(koef);
    R = 1 + (B / koef(1))^(1 / k);
    if(R < rVec(2))
        rVec(2) = R;
    end
    rVec(2) = rVec(2) - 2;
    koef = magic(koef);
    B = getB(koef);
    k = getK(koef);
    R = 1 + (B / koef(1))^(1 / k);
    if(-R > rVec(1))
        rVec(1) = -R;
    end
    rVec(1) = rVec(1) + 2;
end

function B = getB(koef)
    B = realmin('double');
    for i = 2:length(koef)
        if(koef(i) < 0 && abs(koef(i)) > B)
            B = abs(koef(i));
        end
    end
end

function k = getK(koef)
    for i = 2:length(koef)
        if (koef(i) < 0)
            k = -1 + i;
            return;
        end
    end
end

function ret = magic(koef)
    ret = koef;
    for i = 1:length(koef)
        if(mod(i, 2) == 0)
            ret(i) = -ret(i);
        end
    end
end