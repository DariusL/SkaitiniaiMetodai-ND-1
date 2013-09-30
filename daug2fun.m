function y = daug2fun(koef)
    syms x;
    y = sym(0);
    n = length(koef) - 1;
    for i = 1:length(koef)
        y = y + x^(n - i + 1) * koef(i);
    end
end