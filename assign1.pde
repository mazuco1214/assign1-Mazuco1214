float soldierWalk_X = 0;
float soldierWalk_Y ;
float soldierPlace=int(random(2,6));

float robotX = random(160,560);
float robotY ;
float robotPlace=int(random(2,6));

float lazerX;
float lazerL=0;
float lazerY;
float lazerSpeed = 0;

float  lazerLength=0;

float soldierX;
float soldierY;

PImage blueSky;
PImage groundHog;
PImage life;
PImage robot;
PImage soil;
PImage soldier;


void setup() { 
	size(640, 480, P2D);
  colorMode(RGB);
  blueSky=loadImage("bg.jpg");
  groundHog=loadImage("groundhog.png");
  life=loadImage("life.png");
	robot=loadImage("robot.png");
  soil=loadImage("soil.png");
  soldier=loadImage("soldier.png");
  imageMode(CORNERS);
  
}

void draw() { 
  background(blueSky);
  image(soil,0,160);
  
  //groundhog's  life
  image(life,10,10);
  image(life,80,10);
	image(life,150,10);

  //grass
  rectMode(CORNERS);
  noStroke();
  fill(124, 204, 25);
  rect(0,145,640,160);
  
  //groundhog
  image(groundHog,280,80);
  
  //sun
  fill(253, 184, 19);
  stroke(255,255,0);
  strokeWeight(5);
  ellipse(590,50,120,120);
  
  //soldier's place and walk
  image(soldier,soldierWalk_X-80,soldierWalk_Y);
  soldierWalk_Y=soldierPlace*80;
  soldierWalk_X +=5;
  soldierWalk_X %=720;

  //lazer
  lazerX=robotX+25;
  lazerY=robotY+37;
  lazerL=lazerX;
  rectMode(CORNERS);
  strokeWeight(10);
  stroke(255,0,0);
  line(lazerX-lazerSpeed,lazerY,lazerL-lazerLength,lazerY);
  lazerSpeed +=2;
  if(lazerSpeed >=40){
    lazerLength +=2;
  }

  if(lazerX-lazerSpeed <= robotX-160){
   lazerSpeed = 0;
   lazerLength = 0;
  }

  
  //robot's place  
  image(robot,robotX,robotY);
  robotY=robotPlace*80; 
  
  
}
