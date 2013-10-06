clear;
koef = [1 -31 215 -5 -2016 -1764];
%dtr = tikslesnis(koef);
dtr = [-10 30];
dgr = [-grubus(koef) grubus(koef)];
d = @(x)(x.^5 - 31 .* x.^4 + 215 .* x.^3 - 5 .* x.^2 - 2016 .* x - 1764);
f = @(x)(sin(2.*x)./((x+1).^2));
fr = [0 10];
x = linspace(dtr(1), dtr(2), 200);
y = d(x);
figure(1);
grid on;
hold on;
plot(dtr, 0, '^g');
plot(x, y, '-b', 'LineWidth', 2);
droots = bisekcija(d, dtr(1), dtr(2), 40, 0.01);
hold off;
x = linspace(fr(1), fr(2), 200);
y = f(x);
figure(2);
hold on;
grid on;
plot(fr, 0, '^g');
plot(x, y, '-b', 'LineWidth', 2);
froots = bisekcija(f, fr(1), fr(2), 40, 0.01);
hold off;