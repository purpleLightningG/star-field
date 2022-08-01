star []stars = new star[400]; // making 100 stars 

float speed;
void setup() {
  size(800, 800); // making a square sized campus

  for (int i=0; i<stars.length; i++) {  // when a star goes out of the window
    stars[i] = new star();     // we will use the same star in an array
  }                                 // but reset its location
}

void draw() {
  speed = map(mouseX,0,width,0,20); // controlling the speed via mouse
  background(0); // making the background of the space black
  for (int i=0; i<stars.length; i++) {  
    stars[i].update(); //updating and showing the new ss
    stars[i].show();
  }
}