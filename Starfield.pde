PImage smileyFace;

Particle [] circles = new Particle [500];
void setup(){
  size(800,800);
 smileyFace = loadImage("SMILEY.png"); 
// bob = new Particle();
for(int i = 0; i < circles.length; i++){
circles[i] = new Particle();
  circles[0] = new OddballParticle();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < circles.length; i++){
   circles[i].show();
   circles[i].move();
  }
}

void mousePressed(){
 for(int i = 0; i < circles.length; i++){
   circles[i] = new Particle();
 }
}

class Particle{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle(){
   myX = myY = 400; 
   mySpeed = (Math.random()*5);
   myColor = color((int)(Math.random()*255),
                   (int)(Math.random()*255),
                   (int)(Math.random()*255));
   myAngle = (Math.random()*2*PI);
 }
 
   void move(){
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
   }
   
   void show(){
     noStroke();
     fill(myColor);
     ellipse((float)myX, (float)myY, 10, 10);
   }
 
}// end of particle class

class OddballParticle extends Particle{
  OddballParticle(){
    myX = 400;
    myY = 400;
  }
  void move(){
   myX += Math.random()*5-2.5;
   myY += Math.random()*5-2.5;
  }
  void show(){
    image(smileyFace, (float)myX, (float)myY);
  }
}
