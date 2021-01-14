public class Albero{
  private float h;
  private float w;
  private float x;
  private float y;
  public static final color COLORE_TRONCO = #8A6642;
  public static final color COLORE_ALBERO =  #00BB2D;
  public static final color BORDO_TRONCO =  #654321;
   public static final color BORDO_ALBERO =  #287233;
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
    rect(x-w/8, y, w/4, -h/2);
    coloraChioma();
    triangle((this.x)-w/2, (this.y-h/2), (this.x), (this.y-h/2)-h, ((this.x))+w/2, (this.y-h/2));
    //triangle((this.x-this.x/10)-w/2, (this.y-this.y/10), (this.x-this.x/10), (this.y-this.y/10)-h, ((this.x-this.x/10))+w/2, (this.y-this.y/10));
  }
  
  public void coloraTronco(){
    fill(COLORE_TRONCO);
    stroke(BORDO_TRONCO);
  }
  public void coloraChioma(){
    fill(COLORE_ALBERO);
    stroke(BORDO_ALBERO);
  }
  
  
}
