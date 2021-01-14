class Foresta{
  private Albero[] alberi;

  public Foresta(int n_alberi, int lunghezza, int altezza){
   alberi = new Albero[n_alberi];
   for (int a = 0; a < n_alberi; a++){
      alberi[a] = new Albero(random(lunghezza), altezza, lunghezza/6, altezza/6);
    }
  }
  public void draw(){
    for(int i = 0; i < alberi.length; i++){
      alberi[i].draw();
    }
  }

}
