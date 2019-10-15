public class Bonus extends Sprite{
  
   int bonus1, bonus2, bonus3;
   int positionX, positionY, sizeX, sizeY;
  
  public Bonus(int newPositionX, int newPositionY, int newSizeX, int newSizeY){
        super(newPositionX, newPositionY, newSizeX, newSizeY);
        positionX = newPositionX;
        positionY = newPositionY;
        sizeX = newSizeX;
        sizeY = newSizeY;
  }
  
  public void drawBonus(){
    image(bonus, positionX, positionY, sizeX, sizeX);
  }
  
  public void winBonus(){
    if(ball.isBallTouchesBonues(positionX, positionY)){
      println("Hello world");
    }
  }
    
  public void draw(){
    drawBonus();
    winBonus();
  }
}
