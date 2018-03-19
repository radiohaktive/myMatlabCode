function [] = myMonteZ()

  i = 1;
  k = 1;
  a = 0;
  b = 1;
  
  Xa = 0;
  Ya = 0;
  Za = 0;
  
  parab1Area = 0;
  parab2Area = 0;
  
  tArea = 0;
  
  while( i <= 1000 )
    xvar = 0;
    yvar = 0;
    Xa = 2*(a + (b-a)*rand(1));
    Ya = 4*(a + (b-a)*rand(1));
    Za = 8*(a + (b-a)*rand(1));
    if( (Za+Xa.^2+Ya.^2) <= 8)
      xvar = 1;
      end
    parab1Area += xvar;
    xArea = (64*parab1Area)/i;
    if( (Za - Xa.^2 - (3*Ya.^2)) <= 0 )
      yvar = 1;
      end
    parab2Area += yvar;
    yArea = (64*parab2Area)/i;
    tArea = yArea - xArea;
    fprintf('%5d | %10f | %10f | %10f | %10f\n',i,Xa,Ya,Za,tArea);
    i = i+1;
  end
