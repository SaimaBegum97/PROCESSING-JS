int num = 15; 
float[] y = new float[num]; 

void setup() {
  size(500, 500);
  smooth();
  background(#ffffff);

  for (int i = 0; i < y.length; i++) {
    y[i] = random(500); 
  }
}


void draw() {
  stroke(random(255),random(255),random(255));
  noFill();
  

  
  for (int i = 0; i<y.length;i++) {
    ellipse((2*width/y.length) * i, y[i], 50, 15);
    y[i] = y[i]+1; //drags the ellipses down
    if (y[i] > height) y[i] = 0;
  }
}
//  //https://www.openprocessing.org/sketch/39787#