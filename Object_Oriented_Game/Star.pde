class Star {
  
 float starX;
 float starY;
 float starSpeed;
 float starSize;
 
 
 Star () {
   
   starX = random(width);
   starY = random(height);
   starSize = random (1,7);
 }
 
 
 void display () {
   noStroke();
   fill (255);
   for (float starX = 0; starX < width; starX = starX +=20);
   for (float starY = 0; starY < height; starY = starY +=20);
   float starX = random(width);
   float starY = random(height);
   ellipse (starX, starY, starSize, starSize);
 } 
 
}
