void setup()
{
  size(500,500);
  background(0,0,0);
  stroke(211,211,211);
  
  mousePressed();
}

void draw()
{
  background(0);
  int num = 0;
  int r = 20;
  int g = 20;
  int b = 50;
  while (num < 700) 
  {
    fill(b,g,b);
    stroke(r+20,g,b+40,230);
    createRandom();
    createRect(num,num);
    num = num + 5;
    r = r + 4;
    g = g  + 2;
    b = b+ 2;
    num = num +1;
    
  }
  createPoints(100,100);
}


void createRect(float x, float y)
{
  rect (10+x,10+y,30,20);
  rect (50+x,10+y,30,20);
  rect (90+x,10+y,30,20);
}

void createPoints(float pointX, float pointY)
{

  int s = 0;
  while (s < 1200) {
    fill(10,s+10,s+200);
    point (10,pointY);
    point (pointX, 400);
    s = s + 5;
    pointX=pointX+5;
    pointY=pointY+5;
}
  
}

void createRandom()
{
  float rectX = random(-10,200);
}


void mouseClicked() {
  float randomPointx;
  float randomPointy;
  
  randomPointx = random(-10,200);
  randomPointy = random(-10,200);
  
  createRect(randomPointx,randomPointy);
  
  
}