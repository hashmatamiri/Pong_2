public class Paddle extends Sprite{
  
   boolean right, left;
   float positionX, positionY;
   float speedX;
  
  Paddle(float positionX, float positionY, float sizeX, float sizeY, float speedX, float speedY){
    super(positionX, positionY, sizeX, sizeY, speedX, speedY); 
    this.positionX = positionX;
    this.positionY = positionY;
    this.speedX = speedX;
  }
  
  public void setRight(boolean newRight){
    right = newRight;
  }
  
  public boolean getRight(){
    return right;
  }
  
  public void setLeft(boolean newLeft){
    left = newLeft;
  }
  
  public boolean getLeft(){
    return left;
  }
  
  public void drawPaddle(){
     rect(positionX, positionY, getSizeX(), getSizeY());
  }
  
  public void movePaddle(){
     if(getRight())
       positionX += speedX;
     else if(getLeft())
      positionX -= speedX;
  }
  
  public void restrictPaddle(){
    if(positionX + 100 >= width)
      positionX -= speedX;
    else if (positionX <= 0)
      positionX += speedX;
  }
  
  void draw(){
    drawPaddle();
    movePaddle();
    restrictPaddle();
  }
}
