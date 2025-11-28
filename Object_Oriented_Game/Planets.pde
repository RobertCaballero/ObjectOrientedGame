class Planet {

  PImage Planet;
  PImage Planet2;


  Planet () {

    Planet = loadImage ("Planet.png");
    Planet2 = loadImage ("Planet2.png");
  }




  void display () {

    image(Planet, 500, 200, 500, 500);
    image (Planet2, 90, 550, 100, 100);
    //fill(121,7,7);
    // ellipse ( 800, 400, 400, 400);
    //fill(4,5,54);
    // ellipse (150, 650, 100, 100);
  }
}
