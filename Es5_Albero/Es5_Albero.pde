Albero a1, a2, a3;
StellaCometa sc;
public void setup(){
  size(600, 600);
  background(10, 10, 50);
  a1 = new Albero(width/3, height, width/6, height/2);
  a2 = new Albero(2*width/3, height, width/6, height/2);
  a3 = new Albero(width/2, height, width/6, height/2);
  sc = new StellaCometa(width/12, height/8, width/12, height/4, width/16,height/16);

}

public void draw(){
  a1.draw();
  a2.draw();
  sc.draw();
}
