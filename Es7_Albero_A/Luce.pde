class Luce{
  private float x;
  private float y;
  private float r;
  private boolean accesa;
  public static final color LUCE_ON = #FFFF00;
  public static final color LUCE_OFF = #C0C0C0;
  public Luce(float x, float y, float r, boolean accesa){
    getX(x);
    getY(y);
    getR(r);    
  }
  
  public void getX(float x){
    this.x = x;
  }
  public void getY(float y){
    this.y = y;
  }
  public void getR(float r){
    this.r = r;
  }
  public void getAccesa(boolean accesa){
    this.accesa = accesa;
  }
  
  /*LE STRINGHE NON SI CONFRONTANO MAI CON == PERCHÈ ESSENDO OGGETTI SI CONFRONTANO
  I RIFERIMENTI, per confrontarle si può fare stringa.equals(stringa2);
  */
  public void draw(){
    if(accesa){
      fill(LUCE_ON);
      stroke(LUCE_ON);
    }
    else{
      fill(LUCE_OFF);
      stroke(LUCE_OFF);
    }
    circle(x, y, 2*r); //L'ultimo parametro è il diametro
    
  }
  
  public boolean ePremuto(float mx, float my){ //Ovvero mouse X e mouse Y
      float dx = mx-x;
      float dy = my-y;
      boolean ris = false;
      if(dx*dx+dy*dy < r*r){
        accesa = !accesa;
        ris = true;
      }
      return ris;
  }
}
