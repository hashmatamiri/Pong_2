Paddle paddle;
Ball ball;
Bricks bricks;
Evils evilRight;
Evils evilLeft;
Line line;
Bonus bonus1;
Bonus bonus2;
Bonus bonus3;
Point point;
GameOver gameOver;

ArrayList<Bricks> bricksList = new ArrayList<Bricks>();
public int score = 0;
PImage evils, bonus;
boolean isBonus1Visible = true;
boolean isBonus2Visible = true;
boolean isBonus3Visible = true;
boolean isGameOver;
float brickPositionX = 60;
float brickPositionY = 30;
int _width = 1 ;
int _height = 1;
Bricks[][] brickArray;
//String[][] brickArray2;

void setup(){
  size(700, 600);
   brickArray = new Bricks[_width][_height];
 // brickArray2 = new String[_width][_height];

  paddle = new Paddle(width/2 - 50 , height/2 + 250, 100, 20, 10, 10);
  ball = new Ball(width/2, height/2 - 50, 20, 20, 1.5, 3.2);
  bricks = new Bricks(0,0,0,0);
  evilRight = new Evils(width - 80, height/2, 40, 40, 0.5, 1);
  evilLeft = new Evils(width - width + 80, height/2, 40, 40, -1.0, -0.8);
  line = new Line(width, height - 40);
  bonus1 = new Bonus(width/2,  80, 20, 20);
  bonus2 = new Bonus(width - 40, 70, 20, 20);
  bonus3 = new Bonus(45, 70, 20, 20);
  evils =  loadImage("Evil.png");
  bonus =  loadImage("Bonus.png");
  point = new Point();
  gameOver = new GameOver();
  bricksList();

}

void draw(){
  background(0);

 line.draw();
 paddle.draw();
 ball.draw();
 evilRight.draw();
 evilLeft.draw(); 
 point.draw();
 gameOver.draw();
 drawBonusVisibility();
 //buildBricks(brickArray);
 //buildBricks2(brickArray2);
 showBricks();
}

private void drawBonusVisibility(){
   if(isBonus1Visible)
       bonus1.draw();
   if(isBonus2Visible)    
       bonus2.draw();
   if(isBonus3Visible)
       bonus3.draw();
   else
      return;
}

public void buildBricks(Bricks[][] newBrickArray){
  for( int y = 0; y < newBrickArray.length; y++){
    newBrickArray[y][y] = new Bricks(y*110, y*40, 100, 20);
  //  newBrickArray[y][_width-1-y] =  new Bricks(y, _width+20, 100, 20); //For the time being this line of code is not working the way it has been 
   //expected. But it needs to be fixed as soon as it possible.
  }
    for(int x = 0; x < newBrickArray.length; x++){
      for(int y = 0; y < newBrickArray[x].length; y++){
   //   newBrickArray[x][y] = new Bricks( x*110, y*20, 100, 20);
  }  
    }
  }
  
  public ArrayList<Bricks> bricksList(){
        bricksList.add(new Bricks(0,0,50,20));
        bricksList.add(new Bricks(1 * brickPositionX, 1 * brickPositionY,50,20));
        bricksList.add(new Bricks(2 * brickPositionX, 2 * brickPositionY,50,20));
        bricksList.add(new Bricks(3 * brickPositionX, 3 * brickPositionY,50,20));
        bricksList.add(new Bricks(4 * brickPositionX, 4 * brickPositionY,50,20));
        bricksList.add(new Bricks(5 * brickPositionX, 5 * brickPositionY,50,20));
        
        bricksList.add(new Bricks(5 * brickPositionX,0,50,20));
        bricksList.add(new Bricks(4 * brickPositionX, 1 * brickPositionY,50,20));
        bricksList.add(new Bricks(3 * brickPositionX, 2 * brickPositionY,50,20));
        bricksList.add(new Bricks(2 * brickPositionX, 3 * brickPositionY,50,20));
        bricksList.add(new Bricks(1 * brickPositionX, 4 * brickPositionY,50,20));
        bricksList.add(new Bricks(0 * brickPositionX, 5 * brickPositionY,50,20));    
        
        bricksList.add(new Bricks(6 * brickPositionX,0,50,20));
        bricksList.add(new Bricks(7 * brickPositionX, 1 * brickPositionY,50,20));
        bricksList.add(new Bricks(8 * brickPositionX, 2 * brickPositionY,50,20));
        bricksList.add(new Bricks(9 * brickPositionX, 3 * brickPositionY,50,20));
        bricksList.add(new Bricks(10 * brickPositionX, 4 * brickPositionY,50,20));
        bricksList.add(new Bricks(11 * brickPositionX, 5 * brickPositionY,50,20));
        
        bricksList.add(new Bricks(11 * brickPositionX,0,50,20));
        bricksList.add(new Bricks(10 * brickPositionX, 1 * brickPositionY,50,20));
        bricksList.add(new Bricks(9 * brickPositionX, 2 * brickPositionY,50,20));
        bricksList.add(new Bricks(8 * brickPositionX, 3 * brickPositionY,50,20));
        bricksList.add(new Bricks(7 * brickPositionX, 4 * brickPositionY,50,20));
        bricksList.add(new Bricks(6 * brickPositionX, 5 * brickPositionY,50,20));
      return bricksList;
  }
  
  void showBricks(){
    for(Bricks bricks : bricksList){ //Draw bricks with coding hard
       bricks.draw();
      if(bricks.ballTouchesBricks(ball.positionX, ball.positionY)){
          ball.speedY = ball.speedY * -1;   
          score++;
      }
    }
  }
  
public void drawBricks(){
  for(Bricks[] elem : brickArray){  //Draw bricks without coding hard (NEED WORK TO BE FULFILLED)
    for(Bricks bricks : elem){
      if(bricks != null){
         bricks.draw();
      if(bricks.ballTouchesBricks(ball.positionX, ball.positionY)){
      ball.speedY = ball.speedY * -1; 
      println("Test");
     }else
     return;
       }
    } 
  }
}
  
  public void buildBricks2(String[][] newBrickArray){
  for( int y = 0; y < newBrickArray.length; y++){
    newBrickArray[y][y] ="#";
    newBrickArray[y][_width-1-y] = "#";
  }
    for(int x = 0; x < newBrickArray.length; x++){
      for(int y = 0; y < newBrickArray[x].length; y++){
        if(newBrickArray[x][y] != null)
        print(newBrickArray[x][y] );
        else
        newBrickArray[x][y] = " ";
      }  
      println();
    }
  println();

  }
  
 void mousePressed(){
    if(gameOver.getGameOver()){
       if(mousePressed){
         ball = new Ball(width/2, height/2 - 50, 20, 20, 2.5, 3.2); // Write a better syntax for this line of code. Try to use the sprite methods.
         score = 0;
      }
    }
  }
  
void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT)
        paddle.setRight(true);
     else 
        paddle.setLeft(true);
  }
}

void keyReleased(){
 if(key == CODED){
   if(keyCode == RIGHT)
       paddle.setRight(false);
    else
       paddle.setLeft(false);
 } 
}
