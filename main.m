clear;
koef = [1 -31 215 -5 -2016 -1764];
rg = tikslesnis(koef);
d = @(x)(x^5 - 31 * x^4 + 215 * x^3 - 5 * x^2 - 2016 * x - 1764);
droots = skenavimas(d, rg(1)-2, rg(2)+2, 1, 0.01);