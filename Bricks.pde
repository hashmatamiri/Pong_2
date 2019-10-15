public class Bricks extends Sprite{
  
  float positionX, positionY, sizeX, sizeY;
  boolean isBrickVisible = true;

  Bricks(float positionX, float positionY, float sizeX, float sizeY){
    super(positionX, positionY, sizeX, sizeY);
    this.positionX = positionX;
    this.positionY =  positionY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }
  
  void drawRect(){
    rect(positionX, positionY, sizeX, sizeY);
  }

  public boolean ballTouchesBricks(float ballPositionX, float ballPositionY){
       if(!isBrickVisible){
         return false;
      }
      
    if(ballPositionX + 10 > positionX && ballPositionX - 10 <= positionX + 50)
        if(ballPositionY +10 > positionY && ballPositionY - 10 <= positionY + 20  ){ 
        isBrickVisible = false;
      return true;
    }
    return false;
  }
  void draw(){
  if(isBrickVisible)
    drawRect();
  }
}
