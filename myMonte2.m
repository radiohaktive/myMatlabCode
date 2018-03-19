function [] = myMonte2()
  i = 1;
  a = 0;
  b = 1;
  union = 0;
  area = 0;
  
  while( i <= 1000 )
	xvar = 0;
	Xa = a + (b-a).*rand(2);
	Ya = a + (b-a).*rand(2);
	fx1 = Ya - (Xa * Xa);
  fx2 = Ya - Xa;
	if( fx1 <= 0 && fx2 <= 6)
	  xvar = 1;
	end
	union += xvar;
	area = union / i;
  plot(Xa,Ya);
	%%fprintf('%5d | %f | %f | %f | %f\n',i,Xa,Ya,xvar,area);
	i = i + 1;
  end
  

  
