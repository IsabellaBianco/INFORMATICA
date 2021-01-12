public class Albero{
  private float h;
  private float w;
  private float x;
  private float y;
  private color COLORE_TRONCO = color(122, 122, 122);
  private color COLORE_ALBERO = color(0, 255, 0);
  public Albero(float x, float y, float w, float h){
    getAltezza(h);
    getLarghezza(w);
    getx(x);
    gety(y);
  }
  public void getAltezza(float h){
    this.h = h;
  }
  public void getLarghezza(float w){
    this.w = w;
  }
  public void getx(float x){
    this.x = x;
  }
  public void gety(float y){
    this.y = y;
  }
  
  public void draw(){
    coloraTronco();
    rect(x-x/20, y, -x/10, -y/10);
    coloraChioma();
    triangle((this.x-this.x/10)-w/2, (this.y-this.y/10), (this.x-this.x/10), (this.y-this.y/10)-h, ((this.x-this.x/10))+w/2, (this.y-this.y/10));
  }
  
  public void coloraTronco(){
    fill(COLORE_TRONCO);
    stroke(COLORE_TRONCO);
  }
  public void coloraChioma(){
    fill(COLORE_ALBERO);
    stroke(COLORE_ALBERO);
  }
  
  
}
