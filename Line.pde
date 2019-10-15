public class Line {
  
  float widthLine, heightLine;
  public Line(int newWidthLine, int newHeightLine){
    widthLine = newWidthLine;
    heightLine = newHeightLine;
  }
  
  public void drawLine(){
    strokeWeight(4);  
    stroke(204, 102, 0);
    line(widthLine - widthLine, heightLine, widthLine, heightLine);
    strokeWeight(0);  
    stroke(0);
 }
   
  void draw(){
    drawLine();
  }
}
