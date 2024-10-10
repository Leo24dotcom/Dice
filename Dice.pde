Die one;
Die two;
void setup()
{
  size(600, 600);  
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  fill(255,255,255);
  rect(0,0,600,600);
  float sum = 0;
  float avg = 0;
  for ( int y = 0; y <= 500; y += 55)
  {
    for ( int x = 0; x <= 600; x += 55)
    {
      Die bob = new Die(x, y);
      bob.show();
      if(bob.rollnumber < 7)
        {
         sum = sum + bob.rollnumber;
        }  
  }
  
}
      text("Total: " +sum, 300, 590);
      avg = sum/110;
      text("Average: "+ avg,300,580);
      if( avg >= 4.5){
       text("ru god", 500,390); 
      }
      else if(avg > 3.9){
       text("You belong in casino", 500,590); 
      }
      else if(avg > 3.5){
        text("Your Luck is above average :D", 500, 590);
      }
      else if(avg == 3.5){
        text("Your luck is average :|",500,590);
      }
      else if(avg < 3.5){
        text("Your luck is trash",500,590);
      }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int rollnumber, myX, myY;//member variable declarations here

  Die(int x, int y) //constructor
  {
    rollnumber = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;//variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  { 
    fill(255, 255, 255);
    rect(myX, myY, 50, 50);
    fill(0, 0, 0);
    if (rollnumber == 1) {
      ellipse(myX + 25, myY +25, 10, 10);
    } else if (rollnumber == 2) {
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
    } else if (rollnumber ==3) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (rollnumber == 4) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX+ 10, myY +40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX+ 40, myY +40, 10, 10);
    } else if (rollnumber == 5) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
    } else if (rollnumber == 6) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX+ 10, myY +40, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX+ 40, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX+ 40, myY +40, 10, 10);
    }
    //your code here
  }
}
