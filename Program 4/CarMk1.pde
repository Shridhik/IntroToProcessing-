/* car driving in the street, with the background (time of day) changing with mouse press. 
Press and hold the top left corner to make Day turn into night, and anywhere else to reverse back to day
rotate is used to rotate the clouds, translate is used to copy the lane dividers and a while loop is used to clone the grass*/
//Global variables
int carXpos = 0;
int wheel1 = 20;
int wheel2 = 75;
int rim1 = 20;
int rim2 = 75;
int windshieldx1 = 97;
int windshieldx2 = 85;
int xPostioncar=0;
int sunDiam=50;
int xPosSun=45;
int yPosSun=35;
int blades = 400;
int x = 0;
int y = 300;
int spacing = 10;
int len = 100;
float B=200;
float S = 247;
float U = 234;
float N = 80;

//default background
void setup(){
  size(400,400);
  background(72,183,203);
}

void draw(){ 
  //background
  noStroke();
  background(0,0,B); 
 
  
  //sun
  fill(S,U,N);
  ellipse(xPosSun,yPosSun,sunDiam,sunDiam);
  
     //if the sun's xPosition(center) moves off of the screen from the left or right, it will come out of the opposite end
if (xPosSun>400)//moves the sun back to the beginning
   xPosSun=0;
if (xPosSun<0)
xPosSun=400;
     //if the mouse clicks the top left corner, day will turn into night
if (mouseX<=95 && mouseY<=85 && mousePressed){ //checks if the mouse is where the sun was originally and if the mouse is being clicked
     //background truns to night 
   B = B-.5;
   S = S+.5;
   U = U+.5;
   N = N+.5;
  xPosSun++;}
     //if the mouse is pressed anywhere else, the sun will go in the opposite direction
 if (mouseX>=95 && mouseY>=85 && mousePressed){
   B = B+.5;
   S = S-.5;
   U = U-.5;
   N = N-.5;
   S = constrain(S,247,255);
   U = constrain(U,235,255);
   N = constrain(N,80,255);
   xPosSun--;
 }

  
  //grey street 
  noStroke();
  fill(100);
  rect(0,300,400,100);
  

//brown mountains
noStroke();
fill(137,42,7);
triangle(0,300,90,200,180,300);
triangle(180,300,270,180,360,300);
triangle(360,300,400,180,450,300);
  
  //green grassmade using for loop
  for(float gr = 0; gr < width; gr += 1.5){
    stroke(0,255,0);
    line(gr,290,gr,300);
  }
  
//car body
  noStroke();
  fill(255,0,0);
  rect(carXpos,270,100,40);
//car windshieldwiper
  stroke(0);
  line(windshieldx1,270,windshieldx2,240);
  stroke(0);
//wheels
  fill(0);
  ellipse(wheel1,320,30,30);
  ellipse(wheel2,320,30,30);
  fill(200);
  //rims
  ellipse(rim1,320,20,20);
  ellipse(rim2,320,20,20);
  //spokes
  stroke(0);
    wheel1 ++;
    wheel2 ++;
    carXpos ++;
    windshieldx1 ++;
    windshieldx2 ++;
    rim1 ++;
    rim2++;
 
if(carXpos>400 && wheel1>400 && wheel2>400 && windshieldx1>400 && windshieldx2>400 && rim1>400 && rim2 >400){
     wheel1 = 20 ;
    wheel2 = 75;
    carXpos = 0 ;
    windshieldx1 = 97 ;
    windshieldx2 = 85;
    rim1 =20;
    rim2 = 75; 

}



//street lines made using translate
  stroke(224,198,63);
  translate(15,350);
  line(-35,0,-05,0);
  line(15,0,45,0);
  line(65,0,95,0);
  line(115,0,145,0);
  line(165,0,195,0);
  line(215,0,245,0);
  line(265,0,295,0);
  line(315,0,345,0);
  line(365,0,395,0);
  
// clouds made using rotate

rotate(radians(10)); 
noStroke();
ellipse(225,-300,50,30); 
ellipse(220,-320,70,40);
ellipse(125,-300,90,50); 
ellipse(120,-330,70,40);
ellipse(25,-250,60,50); 
ellipse(20,-240,90,40);
  
}