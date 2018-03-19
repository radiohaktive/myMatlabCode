function [] = myAreas()
  i = 1;
  k = 1;
  a = 0;
  b = 1;
  
  Xa = 0;
  Ya = 0;
  Qa = 0;
  Ra = 0;
  
  parabArea = 0;
  lineArea = 0;
  xArea = 0;
  qArea = 0;
  
  totalArea = 0;
  
  while( i <= 1000 )
    %%parabArea
    xvar = 0;
    Xa = 2*(a + (b-a)*rand(1));
    Ya = 6*(a + (b-a)*rand(1));
    if(Ya-(Xa*Xa) <= 0)
      xvar = 1;
      end
    parabArea += xvar;
    xArea = (12*parabArea) / i;
    %%linArea
    qvar = 0;
    Qa = 2*(a + (b-a)*rand(1));
    Ra = 6*(a + (b-a)*rand(1));
    if((Ra+Qa) <= 6)
      qvar = 1;
      end
    lineArea += qvar;
    qArea = (12*lineArea) / i;
    totalArea = (qArea-xArea);
    fprintf('%5d | %10f | %10f | %10f | %10f | %f\n',i,Xa,Ya,Qa,Ra,totalArea);
    i = i+1;
  end
    
    
  

