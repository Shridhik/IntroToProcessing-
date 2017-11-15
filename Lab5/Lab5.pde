int squareWidth;
int numRows;
int X;
int Y;

void setup(){
 size(400,400);
 numRows = 10;
 squareWidth = width/numRows;
}
void draw(){
 for(int i = 0;i < numRows;i++){
   squares(X,Y,29,29);
   fill(255);
   rotate(radians(45));
 for(int j = 0;j < numRows;j++){
 rect(j*squareWidth,i*squareWidth,squareWidth,squareWidth);
 }
 }
}
void squares(int x, int y, int w, int h){
   rotate(radians(-45));
   noStroke();
   fill(0);
   rect(x,y,w,h);
   stroke(200,0,0);
   if (x<400){
     x=x+50;
   }
   
}