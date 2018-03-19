function [] = functions()
  i = 1;
  parabolaArea = 0;
  a = 0;
  b = 1;
  
  while( i <= 100 )
  xvar = 0;
  Xa = a + (b-a).*rand(1);
  Ya = a + (b-a).*rand(1);
  fx = Ya - (Xa.^2);
  if( fx <= 0 )
    xvar = 1;
  end
  parabolaArea += xvar;
  area = parabolaArea/i;
  fprintf('%5d | %10f | %10f | %10f | %10f\n',i,Xa,Ya,xvar,area);
  %%fprintf('%f | %f\n',Xa,Ya);
  plot(Xa,Ya,'*');
  xlim([0,6]);
  ylim([0,6]);
  hold on
  i = i + 1;
  end
  

  