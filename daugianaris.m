function y = daugianaris(x)
    y = zeros(1, length(x));
    for i = 1:length(x)
        y(i) = x(i)^5 - 31 * x(i)^4 + 215 * x(i)^3 - 5 * x(i)^2 - 2016 * x(i) - 1764;
    end
end