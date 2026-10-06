// STATE VARIABLES
boolean isFull = false;
String screen = "MENU";

 int cbY = 200;
  int cbX = 100;
  int cbSize = 30;

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
}


// DRAW
void draw(){
  background(30);
  
 if(screen == "MENU"){
   drawMenu();
 }else if(screen == "SETTINGS"){
   drawSettings();
 }
}


// SCREEN
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

void drawSettings(){
  fill(255);
  textSize(8);
  text("Pengaturan",  100,120);
  
  
  stroke(255);
  strokeWeight(2);
  if (isFull) {
    fill(0, 200, 100); // Hijau jika dicentang
  } else {
    noFill();          // Kosong jika tidak dicentang
  }
  rect(cbX, cbY, cbSize, cbSize, 5);
  
  noStroke();
  fill(255);
  textSize(20);
  text("Aktifkan Fullscreen", cbX + cbSize + 20, cbY + 22);
  
  textSize(14);
  fill(180, 180, 180);
  text("*Catatan: Mengubah mode layar memerlukan restart aplikasi agar ukuran window menyesuaikan.", 100, cbY + 70);
  
  fill(200, 50, 50);
  rect(100, 350, 150, 45, 8);
  fill(255);
  textSize(20);
  text("Kembali", 138, 380);
}

void mousePressed(){
 if (screen.equals("MENU")) {
    if (mouseX >= 100 && mouseX <= 300 && mouseY >= 220 && mouseY <= 270) {
      screen = "PLAY";
    }
    if (mouseX >= 100 && mouseX <= 300 && mouseY >= 290 && mouseY <= 340) {
      screen = "SETTINGS";
    }
  } 
  else if (screen.equals("SETTINGS")) {
    // Klik area Checkbox Fullscreen
    if (mouseX >= cbX && mouseX <= cbX + cbSize && mouseY >= cbY && mouseY <= cbY + cbSize) {
      isFull = !isFull;
    }
    // Klik tombol "Kembali"
    if (mouseX >= 100 && mouseX <= 250 && mouseY >= 350 && mouseY <= 395) {
      screen = "MENU";
    }
  }
}
