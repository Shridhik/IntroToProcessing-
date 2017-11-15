//This is a program that duplicates the output of an unknown mystery sketch using an efficient program
void setup(){ 
  size(500,500);

//This for loop creates a ten by ten grid of rectangles
for(int x = 0; x<= width; x = x + 50){
  for(int y = 0; y<= height; y = y + 50){ 
    fill(255,0,0); 
    rect(x,y,50,50);
    
    //Draws the Black rectangles on top 
    fill(0); 
    rect(x+2, y+2, 48, 48);
    
    //White part of the squares (Left side)
    fill(255);
    triangle(x+2, y +2, x +24, y + 24, x +2, y+47);
    triangle(x+47, y+2, x+24, y+24, x+47, y+47);
    
   //This draws the inner rectangle with a different pattern which creates the center design
   if(x>50 && x<400 && y>50 && y<400){ 
     fill(255);
     triangle(x+2, y+2, x+24, y+24, x+46, y+2);
     //This covers up the original white pattern of the white triangles with black 
     fill(0);
     triangle(x+2, y +2, x +24, y + 24, x +2, y+47);
     triangle(x+47, y+2, x+24, y+24, x+47, y+47);
     fill(255);
     triangle(x+2, y+46, x+24, y+24, x+46, y+46);
   }
  }
}
}