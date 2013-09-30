clear;
x = 0:0.01:10;
y = funkcija(x);
figure(1);
plot(x, y, 'LineWidth', 2);
grid on;
koef = [1 -31 215 -5 -2016 -1764];
rg = tikslesnis(koef);
x = linspace(rg(1) - 2, rg(2) + 2, 1000);
f = @(x)(x^5 - 31 * x^4 + 215 * x^3 - 5 * x^2 - 2016 * x - 1764);
roots = skenavimas(f, rg(1)-2, rg(2)+2, 1, 0.01);
y = daugianaris(x);
figure(2);
plot(x, y, 'LineWidth', 2);
hold on;
grid on;