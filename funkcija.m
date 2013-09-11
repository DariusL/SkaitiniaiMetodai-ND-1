function y = funkcija(x)
    y = zeros(1, length(x));
    for i = 1:length(x)
        y(i) = sin(x(i) * 2)/((x(i) + 1)^2);
    end
end