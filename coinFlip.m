function [] = coinFlip()

  i = 1;
  a = 0;
  b = 1;
  coin1 = 0;
  coin2 = 0;
  score1 = 0;
  score2 = 0;
  player1 = 0;
  player2 = 0;
  player1Score = 100;
  player2Score = 100;
  
  fprintf( '\n' );
  printf( 'ASSUMING EACH PLAYER STARTS WITH $100' ); 
  fprintf( '\n\n' ); 
  printf( '    n |   Player 1 |   Player 2');
  fprintf( '\n' );
  printf( '---------------------------------');
  fprintf( '\n' );
  
while( i <= 100 ) 

  coin1 = (a+(b-a)*rand(1));
  coin2 = (a+(b-a)*rand(1));
  
  if( coin1 > 0.5 )
    score1 = 1;
    elseif( coin1 < 0.5 )
    score1 = 0;
    end
  if( coin2 > 0.5 )
    score2 = 1;
    elseif( coin2 < 0.5 )
    score2 = 0;
    end
  
  if( score1 == score2 )
    player1Score = player1Score + 1;
    player2Score = player2Score -1;
    elseif( score1 ~= score2 )
    player1Score = player1Score - 1;
    player2Score = player2Score +1;
    end
 
  fprintf( '%5d | %10d | %10d\n', i, player1Score, player2Score);
  i = i + 1;
  end
  