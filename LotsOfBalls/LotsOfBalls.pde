//declare variables
int count=2;
int i=0;

float [] x = new float [count];
float [] y = new float [count];
float [] velx = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];
void setup(){
  //set size of canvas
  size(800, 600);

  //initialize variables
  while(i < count){
  x[i] = width/2;
  y[i] = height/2;
  diam[i] = 30;
  velx[i] = random(-5, 5);
  velY[i] = random(-5, 5);
  i++;
  }

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
  diam[1] = 20;
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