int face;
int numTot=0;
int num1=0;
int num2=0;
int num3=0;
int num4=0;
int num5=0;
int num6=0;
int num7=0;

int num;
int tot=0;
int yn;
int nT,n1,n2,n3,n4,n5,n6,n7;

void setup()
{
  size(900,900);
  noLoop();

}
void draw()
{
  background(0,0,255);
  for(int y = 0; y<500; y+=55){
    for(int x = 0; x< 500; x+=55){
      Die d1 = new Die(x,y);
      d1.show();
      d1.roll();
      for( int yn=50; yn<850; yn+=40){
          if(yn<440){
            num = yn+(2*(440 - yn));
          }else if(yn==425){
            num = yn;
          }else{
            num = yn-(2*(yn-440));
          }
  	     	stroke(255);
  	     	text(num,570,yn+5);
          strokeWeight(1);
          line(595,yn,605,yn);
    	}
      }
    }
}

void mousePressed()
{
  redraw();
  tot++;
  nT=0;
  n1 = 0;
  n2 = 0;
  n3 = 0;
  n4 = 0;
  n5 = 0;
  n6 = 0;
  n7 = 0;
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
      nT+=1;
      n1++;
    }else if(face == 1){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      num2++;
      numTot+=2;
      nT+=2;
      n2++;
    }else if(face == 2){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      point(xd+25,yd+25);
      num3++;
      numTot+=3;
      nT+=3;
      n3++;
    }else if(face == 3){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      point(xd+35,yd+15);
      point(xd+15,yd+35);
      num4++;
      numTot+=4;
      nT+=4;
      n4++;
    }else if(face == 4){
      stroke(0);
      point(xd+15,yd+15);
      point(xd+35,yd+35);
      point(xd+35,yd+15);
      point(xd+15,yd+35);
      point(xd+25,yd+25);
      num5++;
      numTot+=5;
      nT+=5;
      n5++;
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
      nT+=6;
      n6++;
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
      nT+=7;
      n7++;
    }
    fill(0);
    noStroke();
    rect(0,560,550,400);
    fill(255);
    strokeWeight(5);
    textSize(20);
    text("Rolls: "+tot,0,800);
    textSize(12);
    text("Total:"+numTot,0,580);
    text("     Total of:",0,600);
    text("This roll: ",110,580);
    textSize(11);
    text("Total:"+nT,110,600);
    text("Num of 1:  "+num1,0,620);
    text("Num of 2:  "+num2,0,640);
    text("Num of 3:  "+num3,0,660);
    text("Num of 4:  "+num4,0,680);
    text("Num of 5:  "+num5,0,700);
    text("Num of 6:  "+num6,0,720);
    text("Num of 7:  "+num7,0,740);
    text(n1,110,620);
    text(n2,110,640);
    text(n3,110,660);
    text(n4,110,680);
    text(n5,110,700);
    text(n6,110,720);
    text(n7,110,740);
    
    textSize(12);
    rect(620,880 - num1,30,num1);
    rect(660,880 - num2,30,num2);
    rect(700,880 - num3,30,num3);
    rect(740,880 - num4,30,num4);
    rect(780,880 - num5,30,num5);
    rect(820,880 - num6,30,num6);
    rect(860,880 - num7,30,num7);
    stroke(100);
    strokeWeight(5);
    text("1's",630,900);
    text("2's",670,900);
    text("3's",710,900);
    text("4's",750,900);
    text("5's",790,900);
    text("6's",830,900);
    text("7's",870,900);
    
    fill(255);
    line(100,580,100,900);
    
    if(num1>830||num2>830||num3>830||num4>830||num3>830||num6>830||num7>830){
      num1=0;
      num2=0;
      num3=0;
      num4=0;
      num5=0;
      num6=0;
      num7=0;
      numTot=0;

      nT=0;
	  n1 = 0;
	  n2 = 0;
	  n3 = 0;
	  n4 = 0;
	  n5 = 0;
	  n6 = 0;
	  n7 = 0;
    }    
  }
  void show()
  {
    strokeWeight(2);
    stroke(0);
    fill(0,255,0);
    rect(xd,yd,50,50);
    fill(255);
    strokeWeight(2);
    textSize(16);
    text("Num of rolls total",570,30);
    line(600,50,600,900);
    line(580,880,980,880);
  }
}