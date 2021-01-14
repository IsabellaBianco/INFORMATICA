
StellaCometa sc;
Foresta fs;
Catena ct;
public static final int N_ALBERI = 12;
public static final int N_LUCI = 13; 

public void settings(){
  size(600, 600);
}
public void setup(){

  background(10, 10, 50);
  sc = new StellaCometa(width/12, height/8, width/12, height/4, width/16,height/16);
  fs = new Foresta(N_ALBERI, 600, 600);
  ct = new Catena(N_LUCI);
}

public void draw(){
  fs.draw();
  ct.draw();
  sc.draw();

  
}

public void mousePressed(){
  ct.ePremuto(mouseX, mouseY);
}
