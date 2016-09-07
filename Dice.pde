

void setup()
{
	size(700,700);
	noLoop();
}
void draw()
{
	background(0);
	for(int y = 0; y<500; y+=60){
		for(int x = 0; x< 500; x+=60){
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
	int face;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		xd=x;
		yd=y;
	}
	void roll()
	{
		face = (int)(Math.random()*6);
		strokeWeight(10);
		if(face == 0){
			point(xd+25,yd+25);
		}else if(face == 1){
			point(xd+15,yd+15);
			point(xd+35,yd+35);
		}else if(face == 2){
			point(xd+15,yd+15);
			point(xd+35,yd+35);
			point(xd+25,yd+25);
		}else if(face == 3){
			point(xd+15,yd+15);
			point(xd+35,yd+35);
			point(xd+35,yd+15);
			point(xd+15,yd+35);
		}else if(face == 4){
			point(xd+15,yd+15);
			point(xd+35,yd+35);
			point(xd+35,yd+15);
			point(xd+15,yd+35);
			point(xd+25,yd+25);
		}else if(face == 5){
			point(xd+15,yd+15);
			point(xd+35,yd+35);
			point(xd+35,yd+25);
			point(xd+15,yd+35);
			point(xd+15,yd+25);
			point(xd+35,yd+15);
		}
	}
	void show()
	{
		strokeWeight(2);
		fill(255);
		rect(xd,yd,50,50);
	}
}
