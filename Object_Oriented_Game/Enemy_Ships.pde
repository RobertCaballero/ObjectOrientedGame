class EnemyShips {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  PImage Ship;
  
  
  EnemyShips() {
    position = new PVector (0,0);
    velocity = new PVector (0,2);
    acceleration = new PVector (0, 0.001);
    Ship = loadImage ("Ship.png");
    
  }
  
  
  void display () {
    
    image (Ship, position.x + 100, position.y + 50, 150,70);
      
  }
  
  
  void move () {
    
   position.add(velocity);
   velocity.add(acceleration);    
    
  }
  
  void stopShip () {
   if (position.y > 640) {
    position.y = -100;
    position.x = random (100, 450);
     
   }
  }
   
   void Lifeloose () {
     
     if (position.y > 600) {
       
       
     }
   }
    
  }
  
