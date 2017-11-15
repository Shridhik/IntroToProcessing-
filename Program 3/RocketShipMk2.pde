//This program shows a rocket ship that moves with the cursor through space at a 45 degree angle using rotate, with a nice moon and starry background, there are yellow meteors flying down along with a giant meteor made with translate 
int meteorX = 300; // position of meteor
int meteorY = 125;
int diameteor = 60; // meteor diameter
int meteorX1 = 310; // coordinates for meteor streaks
int meteorY1 = 110;
int meteorX2 = 440;
int meteorY2 = 30;
float yPos = 0; //all of these are for the x and y coordinates of the meteors flying down
float xPos = 750;
int xPos2 = 600;
int yPos2 = 0;
float xPos3 = 200;
float yPos3 = 0;
int xPos4 = 850;
int yPos4 = 0;
float R = 225; // variables for color
float G = 225;
float B = 225;

void setup(){
  size(750,750);
  ellipseMode(CENTER);

}

 void draw() {
   //purple space background
  background(30,0,50);
 

// the x and y position for the ellipses change so that there are ellipses going down diaganolly
yPos = yPos + 2.5;
xPos = xPos - 2.5;
yPos2 = yPos2 + 3;
xPos2 = xPos2 - 3;
yPos3 = yPos3 + 1.3;
xPos3 = xPos3 - 1.3;
yPos4 = yPos4 + 2;
xPos4 = xPos4 - 2;

// shooting stars in the background turn white to yellow using if statement
if(xPos > yPos){
  B = B - 1;
}
  fill(R,G,B);
  // meteors flying in background
  ellipse(xPos, yPos, 15, 15);
  ellipse(xPos2,yPos2,17,17);
  ellipse(xPos3,yPos3,10,10);
  ellipse(xPos4,yPos4,10,10);



  //main meteor and meteor line streaks with use of translate
    stroke(255,0,0);
  line(meteorX1,meteorY1,meteorX2-8,meteorY2+5);
  translate(15,15);
  line(meteorX1,meteorY1,meteorX2-8,meteorY2+5);
  translate(-8,-8);
  line(meteorX1,meteorY1,meteorX2,meteorY2);
  fill(90,50,0);
  stroke(0);
  ellipse(meteorX,meteorY, diameteor,diameteor); 
  
  //draws a starry background
  fill(255,255,0);
  noStroke();
  triangle(30, 75, 58, 27, 86, 75); // searched up how to draw triangles via processing references  
  triangle(30, 45, 58, 90, 86, 45);
  triangle(450, 200, 478, 152, 506, 200);
  triangle(450, 170, 478, 215, 506, 170);
  triangle(600, 120, 628, 72, 656, 120); 
  triangle(600, 90, 628, 137, 656, 90);
  triangle(100, 300, 128, 252, 156, 300);
  triangle(100, 270, 128, 315, 156, 270);
  
  //draws a moon with craters
  fill(200);
  stroke(0);
  ellipse(375,700,800,350);
  fill(180);
  ellipse(300,640,200,100);
  fill(190);
  ellipse(500,650,90,50);
  fill(190);
  ellipse(100,700,200,100);
  fill(180);
  ellipse(700,690,200,100);

//rotates the entire rocket ship 45 degrees so that it is slanted
rotate(radians(45)); 
//Rocket ship

   //Rocket Ship body
   stroke(0);
   fill(250);
   rectMode(CENTER);
   rect(mouseX, mouseY, 90,220);
   
   //Rocket ship Window
   stroke(0);
   fill(0,200,200);
   ellipse(mouseX,mouseY-30,60,60);
   
   //tip of the rocket
   fill(255,0,0);
   triangle(mouseX-45, mouseY-110, mouseX,mouseY-180, mouseX+45, mouseY-110);
   
   //rocket flames (outside)
   fill(255,10,0);
   triangle(mouseX-15,mouseY+110,mouseX,mouseY+190,mouseX+15,mouseY+110);
   triangle(mouseX-45,mouseY+110,mouseX-30,mouseY+170,mouseX-15,mouseY+110);
   triangle(mouseX+15,mouseY+110,mouseX+30,mouseY+170,mouseX+45,mouseY+110);
   
   //internal rocket flames
   fill(255,200,0);
   triangle(mouseX-10,mouseY+110,mouseX,mouseY+180,mouseX+10,mouseY+110);
   triangle(mouseX-35,mouseY+110,mouseX-40,mouseY+170,mouseX-15,mouseY+110);
   triangle(mouseX+25,mouseY+110,mouseX+20,mouseY+170,mouseX+45,mouseY+110);
   
   //rocket wings
   fill(255,0,0);
   triangle(mouseX-85,mouseY+110,mouseX-45,mouseY,mouseX-45,mouseY+110);
   triangle(mouseX+85,mouseY+110,mouseX+45,mouseY,mouseX+45,mouseY+110);
   

 }