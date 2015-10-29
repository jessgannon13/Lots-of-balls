//declare variables
int count=width/2;

float [] x = new float [count];
float [] y = new float [count];
float [] velx = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];
void setup(){
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  x[1]= 20;
  y[0] = height/2;
  y[1]=20;
  diam[1] = 30;
  diam[0] = 80;
  velx[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  velx[1] = random(-10,10);
  velY[1] = random(-10,10);

}
void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);

  //add velocity to position
  x[0] += velx[0];
  y[0] += velY[0];

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velx[0] = -abs(velx[0]);    //if the ball hits the right wall, assign x[0] velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velx[0] = abs(velx[0]);     //if the ball hits the left wall, assign x[0] velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
  ellipse(x[1],y[1],diam[1],diam[1]);
  
  x[1] += velx[1];
  y[1] += velY[1];
  
 if (x[1] + diam[1] >= width) {
    velx[1] = -abs(velx[1]);    //if the ball hits the right wall, assign x[0] velocity the negative version of itself
  } else if (x[1] - diam[1] <= 0) {
    velx[1] = abs(velx[1]);     //if the ball hits the left wall, assign x[0] velocity the positive version of itself
  }
  if (y[1]+ diam[1] >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1] <= 0) {
    velY[1] = abs(velY[1]);
  }





}