public class GameOver {
  
  
  public void ballCrossHeight(){
   if(ball.moveBallDown() >= height){
     speedXNull();
     speedYNull();
   }
  }
  
  private float speedXNull(){
    return ball.speedX = 0;
  }
  
  private float speedYNull(){
    return ball.speedY = 0;
  }
  
  public void gameOver(){
    
  }
 
  
 void draw(){
   ballCrossHeight();
 }
}
