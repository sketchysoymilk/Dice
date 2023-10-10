Die hi;
int sum = 0;
void setup()
{
  noLoop();
  size(220,220);
}
void draw()
{
  background(250,200,100);
  int sum = 0;
  for(int i = 30; i <= 200; i+=60){
    for(int m = 30; m <= 200; m+=60){
      hi = new Die(i,m);
      hi.roll();
      hi.show();
      sum = sum + hi.numDots;
    }
  }
  text("Sum: "+ sum, 90,210);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numDots, myX, myY;
  
  Die(int x, int y) //constructor
  {
    numDots = 0;
    myX = x;
    myY = y;
  }
  void roll()
  {
    numDots = (int)(Math.random()*6+1);
  }
  void twos()
  {
    ellipse(myX + 7.5, myY + 15, 5,5);
    ellipse(myX +22.5,myY+15,5,5);
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 30,30);
    fill(0);
    if(numDots == 1){
      ellipse(myX + 15, myY + 15, 5,5);
    }
    if(numDots == 2){
      ellipse(myX + 7.5, myY + 15, 5,5);
      ellipse(myX +22.5,myY+15,5,5);
    }
    if(numDots == 3){
      ellipse(myX + 5.75, myY + 5.75, 5,5);
      ellipse(myX +15,myY+15,5,5);
      ellipse(myX+24.25,myY+24.25,5,5);
    }
    if(numDots == 4){
      ellipse(myX + 7.5, myY + 10, 5,5);
      ellipse(myX +22.5,myY+10,5,5);
      ellipse(myX + 7.5, myY + 21, 5,5);
      ellipse(myX +22.5,myY+21,5,5);
    }
    if(numDots == 5){
      ellipse(myX + 15.5, myY + 15.5, 5,5);
      ellipse(myX + 8, myY + 8, 5,5);
      ellipse(myX +23,myY+8,5,5);
      ellipse(myX + 8, myY + 23, 5,5);
      ellipse(myX +23,myY+23,5,5);
    }
    if(numDots == 6){
      ellipse(myX + 7, myY + 10, 5,5);
      ellipse(myX +16,myY+10,5,5);
      ellipse(myX + 7, myY + 21, 5,5);
      ellipse(myX +16,myY+21,5,5);
      ellipse(myX +25, myY + 10, 5,5);
      ellipse(myX +25,myY+21,5,5);
    }
  }
}
