function R = grubus(koef)
    R = betterMax(abs(koef)) / koef(1) + 1;
end

function m = betterMax(vec)
    m = vec(1);
    for i = 2:length(vec)
        if vec(i) > m
            m = vec(i);
        end
    end
end