public class EvilSprite {
  
  private float positionX, positionY, sizeX, sizeY, speedX, speedY;
  
  EvilSprite(float positionX, float positionY, float sizeX, float sizeY, float speedX, float speedY){
    this.positionX = positionX;
    this.positionY = positionY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.speedX = speedX;
    this.speedY = speedY; 
  }
  
  public void setPositionX(float newPositionX){
    positionX = newPositionX;
  }
  
  public float getPositionX(){
    return positionX;
  }
  
  public void setpositionY(float newPositionY){
    positionY = newPositionY;
  }
  
  public float getPositionY(){
    return positionY;
  }
  
  public void setSizeX(float newSizeX){
    sizeX = newSizeX; 
  }
  
  public float getSizeX(){
    return sizeX;
  }
  
  public void setSizeY(float newSizeY){
    sizeY = newSizeY; 
  }
  
  public float getSizeY(){
    return sizeY;
  }
  
  public void setSpeedX(float newSpeedX){
    speedX = newSpeedX;
  }
    
  public float getSpeedX(){
    return speedX;
  }
  
  public void setSpeedY(float newSpeedY){
    speedX = newSpeedY;
  }
    
  public float getSpeedY(){
    return speedY;
  }
}
