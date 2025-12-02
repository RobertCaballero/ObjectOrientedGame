Star myStar;
Planet myPlanet;
Turret myTurret;
Crosshair myCrosshair;
EnemyShips myEnemyShips;
Particles myParticles;
int lives =3;
ArrayList <Particles> Particles;
boolean canLoseLife = true;
boolean showLifes = false;
boolean exploded = false;
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
  myParticles = new Particles ();
  Heart = loadImage("RedHeart.png");
  Heart2 = loadImage ("BlackHeart.png");
  Particles = new ArrayList<Particles>();
  
  for (int i = 0; i < 50; i++) {
    Particles.add(new Particles());
  }
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
  myEnemyShips.lifeBar();
  //myParticles.display();
  //myParticles.update();


  if (myEnemyShips.position.y > 540 && canLoseLife) {
    lives -=1;
    canLoseLife = false;
  }

  if (myEnemyShips.position.y < 200){
    canLoseLife = true;
  }


  if (lives >=1) {
    image (Heart, 20, 720, 60, 50);
  } else image (Heart2, 20, 720, 70, 50);

  if (lives >=2) {
    image(Heart, 90, 720, 60, 50);
  } else image(Heart2, 90, 720, 70, 50);

  if (lives >= 3) {
    image(Heart, 160, 720, 60, 50);
  } else image(Heart2, 160, 720, 70, 50);

  if (lives <= 0) {
    fill (0);
    rect (0,0, 800,800);
    textSize(50);
    fill(255, 0, 0);
    text("GAME OVER", 250, 400);
    noLoop();
  }

 if (myEnemyShips.health == 0)
 {
   myEnemyShips.position.y = -100;
    myEnemyShips.position.x = random (100, 450);
    myEnemyShips.health = 150;

}

  if (exploded) {
    for (Particles p : Particles) {
      p.update();
      p.display();
    }


}

}



  void mousePressed () {
  
      strokeWeight(5);
      stroke(255, 0, 0);
      line (400, 650, mouseX, mouseY);
   
     myEnemyShips.health -=25;
  }
