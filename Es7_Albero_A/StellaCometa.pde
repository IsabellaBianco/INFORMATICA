public class StellaCometa{
  private float h;
  private float w;
  private float x;
  private float y;
  private float puntox_stella;
  private float puntoy_stella;
  private float ws;
  private float hs;
  private color COLORE_CODA = color(255, 255, 0 );
  private color COLORE_STELLA = color(255, 155, 0);
  private color COLORE_SFONDO = color(10,10, 50);
  public StellaCometa(float x, float y, float w, float h, float ws, float hs){
    getAltezza(h);
    getLarghezza(w);
    getx(x);
    gety(y);
    getws(ws);
    geths(hs);
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
  
  public void getws(float ws){
    this.ws = ws;
  }
  public void geths(float hs){
    this.hs = hs;
  }
  
  public void draw(){
    fill(COLORE_CODA);
    stroke(COLORE_CODA);
    triangle(this.x, this.y+w/2, this.x+h, this.y, (this.x), this.y-w/2);
    this.puntox_stella = this.x+h;
    this.puntoy_stella = this.y;
    fill(COLORE_SFONDO);
    stroke(COLORE_SFONDO);
    triangle(this.x, this.y+w/2, this.x+h/3, this.y, (this.x), this.y-w/2);
    fill(COLORE_STELLA);
    stroke(COLORE_STELLA);
    disegnaStella();
  }
  
 public void disegnaStella(){
  for(int i = 0; i<7; i++){ 
    triangle(puntox_stella, puntoy_stella+hs/2, puntox_stella-ws, puntoy_stella, puntox_stella, puntoy_stella-hs/2);
    translate(2*puntox_stella/3, -puntoy_stella-2*puntoy_stella/3);
    rotate(70);
  }   
 }

}
