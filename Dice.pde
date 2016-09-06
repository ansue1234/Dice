Die d1 = new Die(200,200);

void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(0);
	d1.show();
	d1.roll();

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
		}
		
	}
	void show()
	{
		strokeWeight(2);
		fill(255);
		rect(xd,yd,50,50);
	}
}
