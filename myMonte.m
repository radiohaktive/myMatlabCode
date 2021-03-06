function [] = myMonte()
  i = 1;
  a = 0;
  b = 1;
  circleArea = 0;
  area = 0;
  pi = 0;
  
  while( i <= 1000 )
	xvar = 0;
	Xa = a+ (b-a)*rand(1);
	Ya = a+ (b-a)*rand(1);
	fx = Xa.^2 + Ya.^2;
	if( fx <= 1 )
	  xvar = 1;
	end
	circleArea += xvar;
	area = circleArea / i;
	pi = 4 * area;
  plot(Xa,Ya);
  title('Area of a Quarter Circle from 0 to 1');
  xlabel('x');
  ylabel('y');
  hold on
	fprintf('%5d | %10f | %10f | %10f | %10f | %f\n',i,Xa,Ya,xvar,area,pi);
	i = i + 1;
  end
  
  t=0:0.001:1;
  s=sin(2*pi*2*t);
  c=cos(2*pi*2*t);
  plot(s,c);%Plotting sin Vs cos
  xlim([0,1]);
  ylim([0,1]);
  axis('equal');
  
