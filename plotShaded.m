x=linspace(0, 18);
y=x.^2;
y2=x.*(-1./4)+(9./2);
y3=x.*0;

figure(1)
plot(x,y, x,y2, x,y3); grid on;
axis([-1,20,-1,5])
area(x, min([y; y2]), 'FaceColor','y')
