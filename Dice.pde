int face;
int numTot=0;
int num1=0;
int num2=0;
int num3=0;
int num4=0;
int num5=0;
int num6=0;
int num7=0;

int tot=0;

void setup()
{
  size(900,900);
  noLoop();
}
void draw()
{
  background(0);
  for(int y = 0; y<500; y+=55){
    for(int x = 0; x< 500; x+=55){
      Die d1 = new Die(x,y);
      d1.show();
      d1.roll();
      }
    }
  }
  

void mousePressed()
{
  redraw();
  tot++;
}
class Die //models one single dice cube
{
  int xd;
  int yd;
  
  //variable declarations here
  Die(int x, int y) //constructor
  {
    xd=x;
    yd=y;
    
    
  }
  void roll()
  {
    face = (int)(Math.random()*7);
    strokeWeight(5);
    if(face == 0){
      stroke(0);
      point(xd+25,yd+25);
      num1++;
      numTot+=1;
    }else if(face == 1){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      num2++;
      numTot+=2;
    }else if(face == 2){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      point(xd+25,yd+25);
      num3++;
      numTot+=3;
    }else if(face == 3){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      point(xd+35,yd+15);
      point(xd+15,yd+35);
      num4++;
      numTot+=4;
    }else if(face == 4){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      point(xd+35,yd+15);
      point(xd+15,yd+35);
      point(xd+25,yd+25);
      num5++;
      numTot+=5;
    }else if(face == 5){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      point(xd+35,yd+25);
      point(xd+15,yd+35);
      point(xd+15,yd+25);
      point(xd+35,yd+15);
      num6++;
      numTot+=6;
    }else if(face == 6){
      stroke(0);
      stroke(255,0,0);
      point(xd+15,yd+20);
      point(xd+35,yd+20);
      point(xd+35,yd+30);
      point(xd+15,yd+30);
      point(xd+25,yd+10);
      point(xd+25,yd+25);
      point(xd+25,yd+40);
      num7++;
      numTot+=7;
    }
    
    
    fill(0);
    noStroke();
    rect(0,560,400,400);
    fill(255);
    strokeWeight(5);
    textSize(20);
    text("Total:"+numTot,0,580);
    text("Num of 1:  "+num1,0,620);
    text("Num of 2:  "+num2,0,640);
    text("Num of 3:  "+num3,0,660);
    text("Num of 4:  "+num4,0,680);
    text("Num of 5:  "+num5,0,700);
    text("Num of 6:  "+num6,0,720);
    text("Num of 7:  "+num7,0,740);
    
    rect(620,880 - num1,30,num1);
    rect(660,880 - num2,30,num2);
    rect(700,880 - num3,30,num3);
    rect(740,880 - num4,30,num4);
    rect(780,880 - num5,30,num5);
    rect(820,880 - num6,30,num6);
    rect(860,880 - num7,30,num7);
    
  }
  void show()
  {
    strokeWeight(2);
    stroke(0);
    fill(255);
    rect(xd,yd,50,50);
    stroke(255);
    strokeWeight(2);
    line(600,50,600,900);
    line(580,880,980,880);
    
  }
}