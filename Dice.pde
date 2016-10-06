void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
  int sum = 0;
  background(255);
  for(int j = 30; j<450; j+=55) {             //Creates all the die instances
    for(int i = 30; i < 450; i+=55) {
      Die one = new Die(i,j);
      one.roll();
      one.show();
      sum = sum + one.dieNum;
    }
  }
  text("Sum of die: " + sum, 5,15);
}


void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dieNum, dieTotal;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    dieNum = (int)(Math.random()*6) + 1;
    System.out.print(dieNum);
   
  }
  void show()
  {
    fill(200);
    stroke(200);
    rect(myX,myY,50,50);
    
    fill(0);
    
    if(dieNum == 1) {
      ellipse(myX + 25,myY + 25, 10,10);
    } else if(dieNum == 2) {
      ellipse(myX + 20, myY + 20,10,10);
      ellipse(myX + 30, myY + 30,10,10);
    } else if(dieNum == 3) {
      ellipse(myX +15,myY + 15, 10,10);
      ellipse(myX + 25,myY + 25, 10,10);
      ellipse(myX + 35, myY + 35,10,10);
    } else if(dieNum == 4) {
      ellipse(myX + 15,myY + 15, 10,10);
      ellipse(myX + 35, myY +15,10,10);
      ellipse(myX + 15, myY + 35,10,10);
      ellipse(myX + 35, myY + 35,10,10);
    } else if(dieNum == 5) {
      ellipse(myX + 15, myY + 15 ,10,10);
      ellipse(myX + 35, myY + 15,10,10);
      ellipse(myX +25,myY + 25,10,10);
      ellipse(myX + 15, myY + 35,10,10);
      ellipse(myX + 35, myY + 35,10,10);
    } else if(dieNum == 6) {
      ellipse(myX + 15, myY + 10,10,10);
      ellipse(myX + 15, myY + 25,10,10);
      ellipse(myX + 15, myY + 40,10,10);
      ellipse(myX + 35, myY + 10,10,10);
      ellipse(myX + 35, myY + 25,10,10);
      ellipse(myX + 35, myY + 40,10,10);
    }
    dieTotal = dieTotal + dieNum;
    
  }
}
