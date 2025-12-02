class EnemyShips {
  
  int health = 150;
  int health2 = 150;
  PVector position;
  PVector velocity;
  PVector acceleration;
  PImage Ship;
  
  
  EnemyShips() {
    position = new PVector (0,0);
    velocity = new PVector (0,2);
    acceleration = new PVector (0, 0.025);
    Ship = loadImage ("Ship.png");
    
  }
  
  
  void display () {
    
    image (Ship, position.x + 100, position.y + 50, 150,80);
      
  }
  
  void lifeBar () {
   
    fill (50);
    rect (position.x +100, position.y + 30, health2, 10);
    
    fill (255,0,0);
    rect (position.x +100, position.y + 30, health, 10);
    
    
  }
  
  
  void move () {
    
   position.add(velocity);
   velocity.add(acceleration);    
    
  }
  
  void stopShip () {
   if (position.y > 550) {
    position.y = -100;
    position.x = random (100, 450);
    health = 150;
    health2 = 150;
     
   }
  }
   
    
  }
  
