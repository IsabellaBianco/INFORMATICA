class Catena{
  private Luce[] luci;
  
  public Catena(int max){
    luci = new Luce[max];
    for(int a = 0; a < max; a++){
      luci[a] = new Luce(50*a, 200, 10, true);
    }
  }
  public void draw(){
    for(int a = 0; a < luci.length; a++){
      luci[a].draw();
    }
  }
  public void ePremuto(float mx, float my){
    int a = 0;
    boolean acc = false;
     while(a < luci.length && !acc){
       acc = luci[a].ePremuto(mx, my);
       a++;
     }
  }
}
