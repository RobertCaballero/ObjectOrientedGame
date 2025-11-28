class Turret {

    PImage Heart;
    PImage Heart2;
    
    
    Turret () {
      
      Heart = loadImage("RedHeart.png");
      Heart2 = loadImage ("BlackHeart.png");
      
      
    }
  
  
  
  void display () {

   

    fill(50);
    quad(340, 750, 460, 750, 490, 800, 310, 800);
    quad(380, 700, 420, 700, 450, 750, 350, 750);
    quad(395, 650, 405, 650, 410,700, 390, 700);
    //rect(395, 650, 10,100);
    fill(255,0,0);
    ellipse(303, 700, 25,20);
    ellipse(497, 700, 25,20);
    fill(50);
    rect(290, 700, 25, 100);
    rect(485, 700, 25, 100);
  }
  
  void fulllife () {
    
    image(Heart, 20, 720, 60, 50);
    image(Heart, 90, 720, 60, 50);
    image(Heart, 160, 720, 60, 50);
    //image(Heart2, 150, 720, 70, 50);
    
    
  }
  
  void loose1life () {
    
    
    
    
  }
  
  void loose2life () {
    
    
    
    
  }
  
  void died () {
    
    
    
    
  }
  
}
