int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int numBolts = 0;

void setup()
{

  strokeWeight(3);
  background(0, 0, 0);
  size(600, 300);
 
}


void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  if(mousePressed && (mouseButton == LEFT)){
   stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   numBolts = numBolts + 1;
  }
}



void draw()
{
  while (startX < 300) {
    endX = startX + ((int)(Math.random()*9)+1);
    endY = startY + ((int)(Math.random()*19)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  fill(169,169,169);
  stroke(169,169,169);
  rect(301,-300,30,1300);
  fill(255,255,51);
  stroke(0,0,0);
  ellipse(475,150,150,150);
  fill(10,10,10);
  stroke(0,0,0);
  rect(440,120,5,40);
  fill(10,10,10);
  stroke(0,0,0);
  rect(490,120,5,40);
  fill(10,10,10);
  stroke(0,0,0);
  rect(450,180,40,5);
  fill(255,255,255);
  stroke(0,0,0);
  rect(450,180,40,5);
  fill(255,255,255);
  stroke(0,0,0);
  
  if(numBolts > 3){
  rect(360,10,100,50);
  stroke(255,255,255);
  beginShape();
vertex(400,50);
vertex(410,90);
vertex(380,50);
endShape();

textAlign(CENTER);
textSize(9);
fill(0,0,0);
text("Good thing there is\n a wall here.",410,30);
  }
}