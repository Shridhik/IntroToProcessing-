//sketch that creates tribbles and excited them every 5 seconds
//array of 200 tribble
Tribble[] tribble= new Tribble[200];
void setup(){
  frameRate(30);
  size(400,400);
  for(int i = 0; i<tribble.length; i=i+1){
    //for each tribble object, assign it a random position on the grid
    tribble[i] = new Tribble(random(400), random(400));
    }
}

void draw(){
   background(255);
   //for each tribble, display this:
   for(int j=0; j<tribble.length; j=j+1){
    tribble[j].display();
    
    
   }
}


//This creates the Tribble class
class Tribble{
  float counter = random(81);
  color c;
  float xpos;
  float ypos;
  float dia;
  //parameters are the random position assigned earlier
  Tribble(float tempxpos, float tempypos){
    xpos = tempxpos;
    ypos = tempypos;
   }
  
  //This function displays the tribble on the screen 
  void display() {
  
  float R = (100);
  float G = (30); 
  float B = (20);
  stroke(0);
  //This fill makes the tribbles brown 
  fill(R,G,B);
  
    // The tribble fuzz
    fill(200,100,30);
    ellipse(xpos,ypos-10,10,10);
    ellipse(xpos+5,ypos-10,13,10);
    ellipse(xpos+9,ypos-8,14,10);
    ellipse(xpos+12,ypos-6,10,10);
    ellipse(xpos+13,ypos-3,12,10);
    ellipse(xpos+14,ypos-1,13,10);
    ellipse(xpos+13,ypos+3,12,10);
    ellipse(xpos+12,ypos+6,12,10);
    ellipse(xpos+9,ypos+8,13,10);
    ellipse(xpos+5,ypos+9,12,10);
    ellipse(xpos,ypos+10,12,10);    
    ellipse(xpos-5,ypos-10,12,10);
    ellipse(xpos-10,ypos-9,13,10);
    ellipse(xpos-13,ypos-6,12,10);
    ellipse(xpos-14,ypos-3,12,10);
    ellipse(xpos-13,ypos+6,12,10);
    ellipse(xpos-14,ypos+3,12,10);
    ellipse(xpos-10,ypos+9,12,10);
    ellipse(xpos-5,ypos+10,12,10);
  
  //tribble body
  ellipse(xpos,ypos,35,25);
  //tribble eyes
  fill(0);
  ellipse(xpos-5,ypos-5,6,10);
  ellipse(xpos+5,ypos-5,6,10);
  
  counter ++;
  
  //This makes the tribbles wake and sleep in the desired intervals 
  if(counter>=55){
    jiggle();
  }
  if(counter>81){
    counter = 0;
    }
    }

   //This function makes the tribble "excited"
 void jiggle(){
   xpos=xpos+random(-1,1);
 }
   
   
   
   
   
   
 }