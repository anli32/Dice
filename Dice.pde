// Set up the canvas
void setup()
{
  size(540, 580);
  noLoop();
}

// In draw(), set the background and create 36 dices using the Die class
void draw()
{
  background(254, 219, 255);
  
  // numDots is used to count the number of dots in all the dices
  int numDots = 0;
  
  // A for loop is used to create 6 rows and 6 coulumns of dices
  for (int j = 10; j < 500; j += 90) {
    for (int i = 10; i < 500; i += 90) {
      Die dice = new Die(i, j);
      dice.show();
      
      // numDots is used to count the total number of dots on the dices
      numDots = numDots + dice.randomRoll;
    }
  }
  // Display the total number of dots on the dices 
  fill(255);
  textAlign(CENTER);
  textSize(25);
  text("Total: " + numDots, 270, 560);
}

// Whenever the mouse is pressed, a new set of 36 dices are drawn
void mousePressed()
{
  redraw();
}

// Create the class Die to model a die object
class Die 
{
  // Declare member variables
  int myX, myY, randomRoll;
  
  // Initialize member variables in the constructor function
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    roll(); // Initialize the randomRoll variable by calling roll() because the 
            //     randomRoll variable is initialized in the roll() function
  }
  
  // The roll() function generates the random integer from 1 to 6
  void roll()
  {
    randomRoll = (int)(Math.random() * 6) + 1;
  }
  
  // The show() function displays the die and the number of dots depending on what randomRoll is (what the random integer is)
  void show() {
    fill(255);
    noStroke();
    rect(myX, myY, 70, 70, 15);
    
    // Depending on the value of randomRoll (from 1 to 6); we will draw that many dots on the die
    if(randomRoll == 1) {
      fill(175, 255, 244);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if(randomRoll == 2) {
       fill(175, 230, 255);
       ellipse(myX + 20, myY + 20, 10, 10);
       ellipse(myX + 50, myY + 50, 10, 10);
    } else if(randomRoll == 3) {
       fill(222, 186, 252);
       ellipse(myX + 20, myY + 20, 10, 10);
       ellipse(myX + 50, myY + 50, 10, 10);
       ellipse(myX + 35, myY + 35, 10, 10);
    } else if(randomRoll == 4) {
       fill(156, 159, 252);
       ellipse(myX + 20, myY + 20, 10, 10);
       ellipse(myX + 50, myY + 50, 10, 10);
       ellipse(myX + 20, myY + 50, 10, 10);
       ellipse(myX + 50, myY + 20, 10, 10);
    } else if(randomRoll == 5){
       fill(255, 219, 175);
       ellipse(myX + 20, myY + 20, 10, 10);
       ellipse(myX + 50, myY + 50, 10, 10);
       ellipse(myX + 20, myY + 50, 10, 10);
       ellipse(myX + 50, myY + 20, 10, 10);
       ellipse(myX + 35, myY + 35, 10, 10);
    } else if(randomRoll == 6) {
       fill(255, 175, 229);
       ellipse(myX + 20, myY + 20, 10, 10);
       ellipse(myX + 50, myY + 50, 10, 10);
       ellipse(myX + 20, myY + 50, 10, 10);
       ellipse(myX + 50, myY + 20, 10, 10);
       ellipse(myX + 20, myY + 35, 10, 10);
       ellipse(myX + 50, myY + 35, 10, 10);
    }
  }
}