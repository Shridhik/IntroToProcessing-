// This Program is a Drawing of a House//

size(200, 200); //where you change the size to 200*200
background(0,175,175); //adds the color of the background
rectMode(CORNER);
fill(250,250,0);//the color of the house is yellow
rect(100,100,50,50);

stroke(250,0,0);

line(100,100,125,75);
line(125,75,150,100);
line(125,75,150,100);  
line(100,100,150,100);
stroke(0);            //black outlining for the door//
fill(0,250,0);        // red door//
rect(115,129,10,20);  //rectangle that makes the door//
fill(0);              // black fill for doorknob//
ellipse(124,140,3,3); //doorknob//
fill(250,250,0);      //yellow coloring for the sun//
ellipse(10,10,80,80);  //shape of the sun//
noStroke();            //removes the stroke for the ground//
fill(99,145,0);        // fills the ground with a green color//
rect(0,150,200,50);     // shape of the ground//
fill(245);              // white windows//
stroke(200);              //window outlining//
rect(105,110,15,15);    //first window shape//
line(113,110,113,125);  // line that divide the window left and right//
line(105,118,120,118);  // second line dividing the window top and bottom//
rect(130,110,15,15);    //second window shape//
line(138,110,138,125);  //line that divides the second window left and right//
line(130,118,145,118);  // line that divides the shape from top and bottom//