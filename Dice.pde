void setup()
{
  size(500, 500);
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
	int myX, myY, randomRoll, middlex, middley;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
    roll(); // Initialize Randomroll() variable
    middlex = x + 35;
    middley = y + 35;
	}
	void roll()
	{
		randomRoll = (int)(Math.random()* 6) + 1;
	}
	void show()
	{
		rect(myX, myY, 70, 70, 15);
    if (randomRoll == 1) 
      ellipse(myX, myY, 5, 5);
    else if (randomRoll == 2) {
       ellipse(myX + 0.5, myY, 5, 5);
    }
    else {
        ellipse(myX,myY, 5, 5);
    }
	}
}