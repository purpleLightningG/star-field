class star {

  float x;    //the idea is makind a 3D dimension
  float y;    // but we will be viewing it in 2D 
  float z;

  float pz=z;


  star() {

    x = random(-width, width);  //assigning each plain a
    y = random(-height, height); // random 2D coordinate
    z = random(width);

  pz = z;
  }

  void update() { // updating the stars that are thrown out of the screen, this function basically makes the setup 
    z = z-speed;     // not static

    if (z<1) {    // the stars that are thrown out are being assigned with a new value and also a new set of x and y
      z = width;
      x = random(-width, width);
      y = random(-height, height);

      pz = z;  // updating location

    }
  }
  void show() {

    fill(255); // fill sets the color used to fill shapes
    noStroke(); //Disables drawing the stroke (outline)

    float sx = map(x/z, 0, 1, 0, width); // x/z is a ratio that ranges between (0,1) and (0,width)
    float sy = map(x/y, 0, 1, 0, height); // x/y is a ratio that ranges between (0,1) and (0,height)

    float r = map(z, 0, width, 16, 0); // so that when the stars get closer to the screen they keep getting bigger
    ellipse(sx, sy, r, r);

    float px = map(x/pz, 0, 1, 0, width); 
    float py = map(y/pz, 0, 1, 0, height);


    stroke(255);
    line(px, py, x, y);
  }
}