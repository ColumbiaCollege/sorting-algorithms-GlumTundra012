
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

  //call drawRect pass -1 and -1.
  drawRect();
}

void draw(){
  randomize(numbers);

}

void drawRect() {
  background(255);
  for (int i =0; i <numbers.length; i++) {
    rect(i*rectWidth, height, rectWidth, -numbers[i]);
  }
}

void randomize (int[] a) { 
  for (int k=0; k < a.length; k++) { 
    // Goal: swap the value at pos k with a rnd value at pos x. 
    // save current value from pos/index k into temp 
    int temp = a[k]; 
    // make rnd index x 
    int x = (int)random(0, a.length);    
    // overwrite value at current pos k with value at rnd index x 
    a[k]=a[x]; 
    // finish swapping by giving the old value at pos k to the 
    // pos x. 
    a[x]=temp; 
  } }
