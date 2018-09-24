void setup()
{
	noLoop();
}
void draw()
{
	//your code here
	background(0);
	Die first = new Die(10, 10);
	first.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
		rect(x, y, 10, 10, 5);
	}
}
