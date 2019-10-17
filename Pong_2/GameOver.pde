public class GameOver {
  
  
  public boolean ballCrossHeight(){
    return (ball.moveBallDown() > height) ? true : false;
  }
  
  public void setGameOver(boolean newGameOver){
    isGameOver = (newGameOver) ? true : false;
  }
  
  public boolean getGameOver(){
    return isGameOver;
  }
  
  private float speedXNull(){
    return ball.speedX = 0;
  }
  
  private float speedYNull(){
    return ball.speedY = 0;
  }
  
  private void texts(){
    if(getGameOver()){
     textSize(20);
     text("Game Over", width/2 - 50, height/2);
    } 
  }
  
  public void gameOver(){
    if(ballCrossHeight()){
      setGameOver(true);
      speedXNull();
      speedYNull();
    }
  }
  
 void draw(){
   ballCrossHeight();
   gameOver();
   texts();
 }
}
