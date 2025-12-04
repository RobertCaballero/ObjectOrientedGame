Star myStar;
Planet myPlanet;
Turret myTurret;
Crosshair myCrosshair;
EnemyShips myEnemyShips;
int lives =3; //Created Lives Variable
int score =0; //Created Score Variable
ArrayList <Particles> particles; //Created an Array to have more than one particle in the explosion
boolean canLoseLife = true;
boolean showLifes = false;
boolean exploded = false;
boolean gameOver = false; // New boolean to track whenever is a gameOver in the game.
boolean gameWon = false;
PImage Heart;
PImage Heart2;
PImage GameOver;
PImage GameWon;
int explosionTime = 0;

void setup() {
  size (800, 800);
  background(255);
  frameRate(60); //Added a limit on the framerate so it doesn't overload the CPU (my poor computer)
  noStroke();

  myStar = new Star();
  myPlanet = new Planet();
  myTurret = new Turret();
  myCrosshair = new Crosshair ();
  myEnemyShips = new EnemyShips();
  Heart = loadImage("RedHeart.png");
  Heart2 = loadImage ("BlackHeart.png");
  GameOver = loadImage ("GameOver.png");
  GameWon = loadImage ("GameWon.png");
  particles = new ArrayList<Particles>();

  for (int i = 0; i < 15; i++) {
    particles.add(new Particles());
  }
}


void draw() {
  background(0);

  myStar.display();
  myPlanet.display();
  myTurret.display();
  myEnemyShips.lifeBar();


  if (!exploded && !gameOver && !gameWon) {
    myEnemyShips.display();
    myEnemyShips.move();
    myEnemyShips.stopShip();
  }


  if (myEnemyShips.position.y > 530 && canLoseLife) {
    lives -=1;
    canLoseLife = false;
  }

  if (myEnemyShips.position.y < 200) {
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
    gameOver = true;
    fill (0);
    rect (0,0,800, 800);
    image (GameOver, 200, 200, 420, 300);
    textSize(25);
    fill(255, 0, 0);
    text("Press SPACE to restart", 300, 700);
  }

  if (myEnemyShips.health <= 0 && !exploded && !gameOver && !gameWon)
  {
    exploded = true;
    myEnemyShips.health2= 0; // When the ship is destroyed, the second health bar dissapears.
    
    score +=1; // Score increases one each time the ship is destroyed

    for (Particles p : particles) {
      p.Position.x = myEnemyShips.position.x+175;
      p.Position.y = myEnemyShips.position.y+85;
    }
  }

  if (exploded) {
    for (Particles p : particles) {
      p.update();
      p.display();
    }
    explosionTime ++; // Explosion time will be 1 second
  }


  if (explosionTime > 40) {
    myEnemyShips.health = 150;
    myEnemyShips.position.y = -100;
    myEnemyShips.position.x = random (100, 450);
    explosionTime = 0;
    exploded = false;
  }
  
  if ( score >= 20) {
    gameWon = true;
    fill (150);
    rect (0,0,800,800);
    image (GameWon, 100,200,600,200);
    textSize(25);
    fill(255, 226, 0);
    text("Press SPACE to restart", 280, 700);
  }
  
  fill(255);
  textSize(24);
  text("Score: " + score, 380, 50); //Created a text score that actually has a score that adds up with eax explosion of each ship.

  myCrosshair.display();
}

void resetGame () { //Created a function that resets the entire game!
  lives = 3;
  score = 0;
  myEnemyShips.health = 150;
  myEnemyShips.health2 = 150;
  myEnemyShips.position.y = -150; 
  myEnemyShips.position.x = random (100,450);
  exploded = false;
  gameOver = false;
  gameWon = false;
  explosionTime = 0;
  
  // Changed it to .set  so it uses the already existing vectors instead of using new ones so the fps don't go down.
  myEnemyShips.velocity.set(0,2); //Reset velocity when the game is reset, so it doesn't keep going faster
  myEnemyShips.acceleration.set(0,0.025); //Reset acceleration when the game is reset, so it doesn't keep going faster
  
  for (Particles p: particles) {
    p.Position.x = -100;
    p.Position.y = -100;
  }
  
  
}



void mousePressed () {

  if (!exploded && mouseX >  myEnemyShips.position.x + 100 && //Created something similar to a hitbox around the enemy ship so whenver I click inside those margains the health reduces. That way it doesn't go down when I click anywhere
    mouseX < myEnemyShips.position.x + 250 &&
    mouseY > myEnemyShips.position.y + 50 &&
    mouseY < myEnemyShips.position.y +120) {

    strokeWeight(5);
    stroke(255, 0, 0);
    line (400, 650, mouseX, mouseY);

    myEnemyShips.health -=50;
  }
}

void keyPressed () {
 if (key == ' ' && gameOver) {
  resetGame(); 
 }
 if (key == ' ' && gameWon ) {
   resetGame();
 }
  
  
}
