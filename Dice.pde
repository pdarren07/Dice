void setup()
{
  noLoop();
  size(600,600);
}
void draw()
{
  background(#C8A2C8);
  fill(200);
  rect(20, 20, 560, 50, 5);
  rect(20,80,560,500);
  int total = 0;
  for(int column = 120; column <= 540; column += 60){
    for(int row = 60; row <= 540; row += 60){
      Die capy = new Die (row, column);
      total= total + capy.diceNum;
      capy.show();
    }
  }
  textSize(50);
  text("Sum = " + total, 210,63);
  System.out.println(total);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int diceNum, MyX, MyY;
  Die(int x, int y) 
  {
    diceNum = (int)((Math.random()*6)+1);
    MyX = x;
    MyY = y;
  }
  void roll()
  {
    diceNum = (int)((Math.random()*6)+1);
  }
  void show()
  {
    int hue = (int)random(1,4);
    if(hue == 1)
    {
      fill(#E5D9F2);
    } 
    else if(hue == 2)
    {
      fill(#F5EFFF);
    }
    else if (hue == 3)
    {
      fill(#CDC1FF);
    }
    else
    {
      fill(#A594F9);
    }
    rect(MyX - 30, MyY - 30, 60, 60, 10);
    fill(0);
     if(diceNum == 1){
       ellipse(MyX, MyY, 10, 10);
     } else if (diceNum == 2){
       ellipse(MyX - 10, MyY + 10, 10, 10);
       ellipse(MyX + 10, MyY - 10, 10, 10);
     } else if (diceNum == 3){
       ellipse(MyX - 15, MyY + 15, 10, 10);
       ellipse(MyX + 15, MyY - 15, 10, 10);
       ellipse(MyX, MyY, 10, 10);
     } else if (diceNum == 4){
       ellipse(MyX - 15, MyY + 15, 10, 10);
       ellipse(MyX + 15, MyY - 15, 10, 10);
       ellipse(MyX - 15, MyY - 15, 10, 10);
       ellipse(MyX + 15, MyY + 15, 10, 10);
     } else if (diceNum == 5){
       ellipse(MyX - 15, MyY + 15, 10, 10);
       ellipse(MyX + 15, MyY - 15, 10, 10);
       ellipse(MyX - 15, MyY - 15, 10, 10);
       ellipse(MyX + 15, MyY + 15, 10, 10);
       ellipse(MyX, MyY, 10, 10);
     }  else {
       ellipse(MyX - 15, MyY - 15, 10, 10);
       ellipse(MyX - 15, MyY, 10, 10);
       ellipse(MyX - 15, MyY + 15, 10, 10);
       ellipse(MyX + 15, MyY - 15, 10, 10);
       ellipse(MyX + 15, MyY, 10, 10);
       ellipse(MyX + 15, MyY + 15, 10, 10);
     }
  }
}
