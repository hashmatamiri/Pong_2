public class Evils extends EvilSprite{
  
  float positionX, positionY, speedX, speedY;
  
  Evils(float positionX, float positionY, float sizeX, float sizeY, float speedX, float speedY){
    super(positionX, positionY, sizeX, sizeY, speedX, speedY);
    this.positionX = positionX;
    this.positionY = positionY;
    this.speedX = speedX;
    this.speedY = speedY; 
  }
  
  public float moveEvilRight(){    
    return positionX += speedX;
  }
  
  public float moveEvilLeft(){    
    return positionX -= speedX;
  }
  
  public float moveEvilDown(){    
    return positionY += speedY;
  }
  
  public float moveEvilUp(){    
    return positionY -= speedY;
  }
  
  void restrictEvilsLeftRight(){
     moveEvilRight();
    if(moveEvilRight() + 30 >= width || moveEvilLeft() <= 0 || isEvilsComeNearToPaddle()){
      speedX = speedX * -1;
    } 
    
    if(isEvilsComeNearToPaddle()){ //Implement the function like whenever the evils come closer to paddle, a text above each one of them appears which follows them for 3 seconds 
      textSize(20);
      textAlign(CENTER);
      text("Haaaaaaa! Böse Paddle", width/2 - 50, height/2);
    }
  }
  
  void restrictEvilsUpDown(){
      moveEvilDown();
     if(moveEvilDown() + 30 >= line.heightLine || moveEvilUp() <= 0|| isEvilsComeNearToPaddle()){
       speedY = speedY * -1;
     } 
  }
  
  public boolean isEvilsComeNearToPaddle(){
    return positionX + 30 >= paddle.positionX && positionX <= paddle.positionX + 100 && positionY + 30 >= paddle.positionY - 10;
  }
  
  void drawFirstEvil(){
   image(evils, positionX, positionY, getSizeX(), getSizeY());

  }
  
  void ballTouchesEvils(){
    if(ball.isBallTouchesEvilX(positionX) && ball.isBallTouchesEvilY(positionY)){
      ball.speedY = ball.speedY * -1;
      if(ball.isBallSpeedLower()){
         ball.speedY = ball.speedY + 2.5;
      }
    }
    println(ball.speedY);
  }
 
  void draw(){
    drawFirstEvil();
    restrictEvilsLeftRight();
    restrictEvilsUpDown();
    ballTouchesEvils();
  }
  
}
