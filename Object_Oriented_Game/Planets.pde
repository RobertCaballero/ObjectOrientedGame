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
  }
}
