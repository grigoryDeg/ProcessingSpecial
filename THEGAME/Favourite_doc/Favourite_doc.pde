float x = random (100,250);
float skorostX =6;

float y = random(40,300);
float skorostY = 6.5;
float a;
float b = 486;
float dist;
float dist2;
float dist3;
float dist4;
float dist5;
float KoordinataX = random(40,460) ;
float KoordinataY = random(40,460);
float rasst1;
float rasst2;
int points = 0;
float B;
float u = 0.2;
float v = 0;
float S;
import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup() {
  size(500,500);
  frameRate(40);
  minim = new Minim(this);
  player = minim.loadFile("innotic beats - blender.mp3");
  player.play();
}

void draw() {
  background(22+B,24+B,57+ B);  
  fill(255,165,0);
  stroke(255,48,48);
  strokeWeight(5);
  ellipse(x,y,30,30);
  B = B + u;
  if((B >= 90) || (B == 0))  {
    u = - u;
  }
      
  x = x + skorostX;
  y = y + skorostY;
    
  if((x > width - 15) || (x < 15)) {
      skorostX = -skorostX;
  }
  if ((y > height-15) || (y < 15)) {
    skorostY = -skorostY;
  }
  fill(0,255,0);
  stroke(173,255,47);
  rect(a,b,60,10);
  
  dist = sqrt((a - x)*(a - x) + (b - y)*(b - y)); 
  dist2 = sqrt((a + 60 - x)*(a + 60 - x) + (b - y)*(b - y)); 
  dist3 = sqrt((a + 30 - x)*(a + 30 - x) + (b - y)*(b - y));
  dist4 = sqrt((a + 15 - x)*(a + 15 - x) + (b - y)*(b - y));
  dist5 = sqrt((a + 45 - x)*(a + 45 - x) + (b - y)*(b - y));
   
     if((dist < 22.5) || (dist2 < 22.5) || (dist3 < 22.5)|| (dist4 < 22.5) || (dist5 < 22.5)) {
    skorostY = -skorostY;
     }
    fill(255,255,0);
    stroke(255,0,0);
    strokeWeight(2);
    ellipse(KoordinataX,KoordinataY,40,40);
   rasst1 =  sqrt((KoordinataX - x)*(KoordinataX- x) + (KoordinataY - y)*(KoordinataY - y));
  println(rasst1);

  if (rasst1 <= 30) {
    KoordinataX = random(40,460);
    KoordinataY = random(40,460);
    points = points + 20; 
  }
  if(y >= 475) {
    textSize(32 + v);
    fill(255,50,0);
    text("Game Over",160 + S ,250 + S);
    skorostX = 1;
    skorostY = 1;
    v = v + 0.1;
    S = S - 0.25;
  }
    textSize(32);
    fill(255,25,0);
    text("Points: " + points,10,30); 
  }
void mouseMoved() {
 a = mouseX;
  if(a > 440) {
    a = 440;
  }
  }



  
 