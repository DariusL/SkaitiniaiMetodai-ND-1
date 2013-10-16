clear;
global ctr;
ctr = 0;
f = @(x)(sin(2.*x)./((x+1).^2));

dt = [0 10];
x = linspace(dt(1), dt(2), 1000);

y = f(x);
figure(1);
hold on;
grid on;
plot(x, y, '-b', 'LineWidth', 2);
r = bisekcija(f, dt(1), dt(2), 50, 0.0001)
