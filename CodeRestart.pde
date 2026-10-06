// STATE VARIABLES
boolean isFull = false;
String screen = "MENU";

// fullscreen
void settings() {
  if (isFull) {
    fullScreen(P2D);
  } else {
    size(1280, 720, P2D);
  }
}


// SETUP
void setup() {
   background(0);
   size
}


// DRAW
void draw(){
  background(30);
  
 if(screen == "MENU"){
   drawMenu();
 }else if(screen == "SETTINGS"){
 }
}


void drawMenu(){
 //text
 fill(255);
 textSize(40);
 text("Code:ReStart",100,150);
 
 
 fill(100, 100, 100);
  rect(100, 290, 200, 50, 8);
  fill(255);
  text("Pengaturan", 145, 322);
}
