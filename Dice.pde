

int face;
int numTot=0;
int num1=0;
int num2=0;
int num3=0;
int num4=0;
int num5=0;
int num6=0;
int num7=0;

double p1 = 0;
double p2 = 0;
double p3 = 0;
double p4 = 0;
double p5 = 0;
double p6 = 0;
double p7 = 0;
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
    
    p1 = (num1/numTot)*100;
    p2 = (num2/numTot)*100;
    p3 = (num3/numTot)*100;
    p4 = (num4/numTot)*100;
    p5 = (num5/numTot)*100;
    p6 = (num6/numTot)*100;
    p7 = (num7/numTot)*100;
    
    fill(0);
    noStroke();
    rect(0,590,400,400);
    fill(255);
    strokeWeight(5);
    text("Total:"+numTot,0,600);
    text("Num of 1:"+num1+"  "+p1+"%",0,610);
    text("Num of 2:"+num2+"  "+p2+"%",0,620);
    text("Num of 3:"+num3+"  "+p3+"%",0,630);
    text("Num of 4:"+num4+"  "+p4+"%",0,640);
    text("Num of 5:"+num5+"  "+p5+"%",0,650);
    text("Num of 6:"+num6+"  "+p6+"%",0,660);
    text("Num of 7:"+num7+"  "+p7+"%",0,670);
    
    rect(620,680 - num1,30,num1);
    rect(660,680 - num2,30,num2);
    rect(700,680 - num3,30,num3);
    rect(740,680 - num4,30,num4);
    rect(780,680 - num5,30,num5);
    rect(820,680 - num6,30,num6);
    rect(860,680 - num7,30,num7);
    
  }
  void show()
  {
    strokeWeight(2);
    stroke(0);
    fill(255);
    rect(xd,yd,50,50);
    stroke(255);
    strokeWeight(2);
    line(600,50,600,700);
    line(580,680,980,680);
    
  }
}