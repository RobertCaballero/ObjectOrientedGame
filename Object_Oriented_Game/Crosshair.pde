class Crosshair {
  
 void display () {
  strokeWeight(2);
  stroke(255,0,0);
  line(mouseX , mouseY- 20, mouseX, mouseY + 20);
  line(mouseX -20, mouseY, mouseX + 20, mouseY);
  noFill ();
  ellipse (mouseX,mouseY, 25, 25);
  

     
  
 }
  
  

  
}
