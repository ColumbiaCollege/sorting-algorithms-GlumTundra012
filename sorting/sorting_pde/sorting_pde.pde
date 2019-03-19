
//declare and init variables
//number of numbers in the array
int numNumbers =20;
//list of numbers that  I'm going to sort
int [] numbers = new int [numNumbers];
//this is probably the width of the rectangles
float rectWidth =1.0;
//this probably controls what step we're at???
int step =0;
//this should be about if the array is sorted.
boolean sorted = false;



void setup() {
  //window setup
  size(1200, 900);
  background(255);
  frameRate(10);
  //populate with random numbers up to the height of the screen
  for (int i =0; i <numbers.length; i++) {
    numbers[i] = int(random(height));
  }
  //recalculate rect width
  rectWidth = width/numNumbers;

  //call drawRect
  drawRect();
}

void draw() {
  sorting();
  drawRect();
}

void drawRect() {
  background(255);
  for (int i =0; i <numbers.length; i++) {
    rect(i*rectWidth, height, rectWidth, -numbers[i]);
  }
}

//void shuffleArray(){

//  for (int i =0; i <numbers.length;i++){
//    int randIndex = int(random (0,numbers.length));
//    int temp = numbers[randIndex];
//    numbers[randIndex]=numbers[i];
//    numbers[i] = temp;

//  }
//}

void sorting() {
  int i= 0;
  int j =0;



  for (i =0; i< numbers.length; i++) {
    for ( j = i-1; j>=0; j --) {
      if (numbers[i]< numbers[j]){      
        int temp= 0;
        temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
      
    }
  }


  //continue...
}
