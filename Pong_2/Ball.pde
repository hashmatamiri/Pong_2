public class Ball extends Sprite{
  
  float positionX, positionY, speedX, speedY;
  float test;
  
  Ball(float positionX, float positionY, float sizeX, float sizeY, float speedX, float speedY){
    super(positionX, positionY, sizeX, sizeY, speedX, speedY);
    this.positionX = positionX;
    this.positionY = positionY;
    this.speedX = speedX;
    this.speedY = speedY;
  }
  public void drawBall(){
    ellipse(positionX, positionY, getSizeX(), getSizeY());
  }
  
  public float moveBallRight(){    
    return positionX += speedX;
  }
  
  public float moveBallLeft(){    
    return positionX -= speedX;
  }
  
  public float moveBallDown(){    
    return positionY += speedY;
  }
  
  public float moveBallUp(){    
    return positionY -= speedY;
  }
  
  public void restrictBallX(){
     moveBallRight();
    if(moveBallRight() >= width || moveBallLeft() <= 0)
      speedX = speedX * -1;  
  }
  
  public void restrictBallY(){
      moveBallDown();
    if(moveBallUp() <= 0)
      speedY = speedY * -1; 
  }
  
  public boolean isBallTouchesPaddle(){
     if(positionX + 10 > paddle.positionX && positionX - 10 < paddle.positionX + 100 ){
        if(positionY + 10 >= paddle.positionY && positionY - 10 < paddle.positionY + 17){
         return true;
      }
    }
    return false;
  }
  
  private float ballSpeedAfterTouchesPaddle(){
    if(isBallTouchesPaddle())
      speedY = speedY * -1;
   return speedY;
  }
  
  public boolean isBallTouchesEvilX(float evilX){
   return positionX + 10 > evilX && positionX - 10 < evilX + 35;
  }
  
  public boolean isBallTouchesEvilY(float evilY){
    return positionY + 10 > evilY && positionY - 10 < evilY + 35;
  }
  
  public boolean isBallSpeedLower(){
    return (speedY <= 18) ? true: false;
  }
  
  public boolean isBallTouchesBonues(float bonusPositionX, float bonusPositionY){
     if (positionX + 10 > bonusPositionX && positionX - 10 < bonusPositionX + 20){
       if( positionY + 10 > bonusPositionY && positionY - 10 < bonusPositionY + 20){
         return true;
       }
     }
     return false;
  }
  
  void draw(){
    drawBall();
    restrictBallX();
    restrictBallY();
    ballSpeedAfterTouchesPaddle();
  }
}
