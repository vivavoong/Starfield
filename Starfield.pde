Particle [] parts = new Particle[1000];
boolean start = false;
void setup()
{
size(400,400);
for (int i = 0; i < parts.length; i++){
  parts[i] = new Particle();
  parts[0] = new OddballParticle();
}
}
void draw()
{
for (int i = 0; i < parts.length; i++){
  parts[i].move();
  parts[i].show();
}
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle(){
  myX = myY = 200;
  mySpeed = Math.random()*10;
  myAngle = Math.random()*2*Math.PI;
  myColor = color((int)(Math.random()*50)+180, (int)(Math.random()*25)+200, (int)(Math.random()*50)+190);
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    stroke(0);
    rect((int)myX,(int)myY,10,10);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
  myX = myY = 0;
  mySpeed = Math.random()*5;
  myColor = color((int)(Math.random()*50)+180, (int)(Math.random()*25)+200, (int)(Math.random()*50)+190);
  }
  void move(){
  myX = myX + 5;
  myY = myY + 5;
  }
  void show(){
  fill(255);
  ellipse((int)myX,(int)myY,10,10);
  }
}
