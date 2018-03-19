function [] = funcPlots()

t = 0:0.001:2;

s = 6 - t;

plot(t,s);
hold on

r = t.^2;
plot(t,r);

xlim([0,6]);
ylim([0,6]);
axis('equal');