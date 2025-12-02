class Particles {
  
 PVector ParticleVelocity;
 PVector ParticleAcceleration;
 PVector Position;
 
 
 Particles() {
   
    Position = new PVector(0, 0); 
    ParticleAcceleration = new PVector(0, 0.05);
    ParticleVelocity = new PVector(random(-1, 1), random(-2, 0));
   
   
 }
 
  void display () {



    if (myEnemyShips.health == 0); 
    {
      noStroke();
      strokeWeight(2);
      fill(255, 230, 0, 23);
      ellipse(Position.x+175, Position.y+2, 30, 30);
      fill(255, 230, 0);
      ellipse(Position.x+175, Position.y+200, 14, 14);
      fill (255);
      ellipse(Position.x+175, Position.y+200, 7, 7);
    }
  }
  
  
  void update () {
    
    Position.x = myEnemyShips.position.x;
    Position.y = myEnemyShips.position.y -100;
    ParticleVelocity = new PVector (random(-1,1), random (-2,0));
  
}
}
