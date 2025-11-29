Star myStar;
Planet myPlanet;
Turret myTurret;
Crosshair myCrosshair;
EnemyShips myEnemyShips;
boolean showLifes = false;
boolean LooseLife = false;
boolean Loose2Life = false;
boolean Die = false;
PImage Heart;
PImage Heart2;

void setup() {
  size (800, 800);
  background(255);
  noStroke();
  myStar = new Star();
  myPlanet = new Planet();
  myTurret = new Turret();
  myCrosshair = new Crosshair ();
  myEnemyShips = new EnemyShips();
  Heart = loadImage("RedHeart.png");
  Heart2 = loadImage ("BlackHeart.png");
}


void draw() {
  background(0);
  myStar.display();
  myPlanet.display();
  myTurret.display();
  myEnemyShips.display();
  myEnemyShips.move();
  myEnemyShips.stopShip();
  myCrosshair.display();
  myTurret.fulllife();
  //myEnemyShips.Lifeloose();
  if (showLifes) {
    image(Heart, 20, 720, 60, 50);
    image(Heart, 90, 720, 60, 50);
    image(Heart, 160, 720, 60, 50);
  }

  showLifes = true;

  if (LooseLife) {

    image(Heart, 20, 720, 60, 50);
    image(Heart, 90, 720, 60, 50);
    image(Heart2, 152, 720, 70, 50);
  }

  if (Loose2Life) {

    image(Heart, 20, 720, 60, 50);
    image(Heart2, 82, 720, 70, 50);
    image(Heart2, 152, 720, 70, 50);
  }


  if (myEnemyShips.position.y > 540) {
    LooseLife = true;
    Loose2Life = true;
  }

  if (LooseLife == true) {
    showLifes = false;
  }

  if (myEnemyShips.position.y > 530 && LooseLife == true) {
    Loose2Life = true;
  } else {
    LooseLife = false;
    showLifes = false;
}


}








void mousePressed () {
  if (mousePressed == true) {
    strokeWeight(5);
    stroke(255, 0, 0);
    line (400, 650, mouseX, mouseY);
  } else {
  }
}
