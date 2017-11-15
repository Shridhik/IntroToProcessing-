//This code shows a rocket sitting atop a moon. It follows the users cursor and moves around against a backgorund of stars
void setup(){
  size(750,750); 
}

void draw(){ 
  background(30,0,50);
  line(pmouseX, pmouseY +110, mouseX, mouseY+110);
  fill(255,255,0);
  noStroke();
  //Draws the stars in the sky 
  triangle(30, 75, 58, 27, 86, 75); //Searched up how to create triangles via processing references 
  triangle(30, 45, 58, 90, 86, 45);
  triangle(450, 200, 478, 152, 506, 200);
  triangle(450, 170, 478, 215, 506, 170);
  triangle(600, 120, 628, 72, 656, 120); 
  triangle(600, 90, 628, 137, 656, 90);
  triangle(100, 300, 128, 252, 156, 300);
  triangle(100, 270, 128, 315, 156, 270);
  
  //Draws the moon
  fill(200);
  stroke(0);
  ellipse(375,700,800,350);
  fill(210);
  ellipse(300,640,200,100);
  fill(190);
  ellipse(500,650,90,50);
  fill(220);
  ellipse(100,700,200,100);
  fill(190);
  ellipse(700,690,200,100);
  
  //Draws the body of the rocket ship 
  stroke(0);
  fill(255);
  rectMode(CENTER);
  rect(mouseX, mouseY, 90, 220);
  
  //Draws the window
  fill(0,200,200);
  ellipse(mouseX, mouseY-30, 60, 60);
  
  //Draws the top of the rocket
  fill(255,0,0);
  triangle(mouseX-45, mouseY-110, mouseX, mouseY-180, mouseX+45, mouseY-110);
  
  //Draws the rocket flames 
  fill(mouseX,175,mouseY);
  triangle(mouseX-15, mouseY+110, mouseX, mouseY+190, mouseX+15, mouseY +110);
  triangle(mouseX-45, mouseY+110, mouseX-30, mouseY +170, mouseX -15, mouseY +110);
  triangle(mouseX+15, mouseY+110, mouseX+30, mouseY+170, mouseX +45, mouseY +110);
  
  //Draws the internal rocket flames 
  fill(mouseX,175,mouseY);
  triangle(mouseX-10,mouseY+110,mouseX,mouseY+180,mouseX+10,mouseY+110);
  triangle(mouseX-35,mouseY+110,mouseX-40,mouseY+170,mouseX-15,mouseY+110);
  triangle(mouseX+25,mouseY+110,mouseX+20,mouseY+170,mouseX+45,mouseY+110);
  
  //Draws the rocket wings 
  fill(255,0,0);
  triangle(mouseX-85, mouseY+110, mouseX-45, mouseY, mouseX-45, mouseY+110);
  triangle(mouseX+85, mouseY+110, mouseX+45, mouseY, mouseX+45, mouseY+110);
  
}