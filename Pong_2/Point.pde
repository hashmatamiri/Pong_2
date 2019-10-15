public class Point {
  
  private int score;
  
  public Point(){ }
  
  public void setScore(){
    if(isBonus1Visible){
      if (ball.isBallTouchesBonues(bonus1.positionX, bonus1.positionY)){
        isBonus1Visible = false;
        score += 5;
       }
    }
    if(isBonus2Visible){
       if(ball.isBallTouchesBonues(bonus2.positionX, bonus2.positionY)){
        isBonus2Visible = false;
        score += 5;
      }
    }
    
    if(isBonus3Visible){
       if(ball.isBallTouchesBonues(bonus3.positionX, bonus3.positionY)){
        isBonus3Visible = false;
        score += 5;
      }
    }
  }
  public void showScore(){
      textSize(20);
      fill(200);
      text(score, width - 70, height - 70);
  }
  
  void draw(){
    setScore();
    showScore();
  }
}
