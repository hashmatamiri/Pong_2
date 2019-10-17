public class GameOver {
  
  
  public boolean ballCrossHeight(){
   if(ball.moveBallDown() > height){
     speedXNull();
     speedYNull();
     return true;
   }
   return false;
  }
  
  private float speedXNull(){
    return ball.speedX = 0;
  }
  
  private float speedYNull(){
    return ball.speedY = 0;
  }
  
  public void gameOver(){
    if(ballCrossHeight()){
      textSize(20);
      text("Game Over", width/2 - 50, height/2);
    }
  }
 
  
 void draw(){
   ballCrossHeight();
   gameOver();
 }
}
