Star myStar;
Planet myPlanet;
Turret myTurret;
Crosshair myCrosshair;
Laser myLaser;
EnemyShips myEnemyShips;
boolean hit = false;


void setup() {
  size (800,800);
  background(255);
  noStroke();
  myStar = new Star();
  myPlanet = new Planet();
  myTurret = new Turret();
  myCrosshair = new Crosshair ();
  myEnemyShips = new EnemyShips();
  
  
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
  myEnemyShips.Lifeloose();
  
// if (
 
 
}




void mousePressed () {
  if (mousePressed == true) {
  strokeWeight(5);
  stroke(255,0,0);
  line (400, 650, mouseX,mouseY);
  }else {
    
  }
  
  
}
