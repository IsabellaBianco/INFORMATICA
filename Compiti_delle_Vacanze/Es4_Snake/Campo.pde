PImage Icoda;
PImage Itesta;

public class Campo{
  //Creo delle proprietà
  private int x_cibo;
  private int y_cibo;
  private String [] coda = new String [900];
  private int lunghezza_coda;
  private int [][] campo = new int [30][30];
  public Campo(){
    
    inizializzaCampo();
    //Genero il primo quadratino di cibo
    GeneraCibo(180, 180);
    this.lunghezza_coda = 0;
    
   coda[0] = 280 + "-" + 280;
   //Carico le immagini per la testa e per la coda
   Icoda = loadImage("coda4.png");
   Itesta = loadImage("testa3.png");
 
    
  }
  //Sfondocampo è un quadrato blu con un bordo rosso e spesso 20
  public void sfondoCampo(){
    fill(0, 0, 255);
    strokeWeight(20);
    stroke(255, 0, 0);
    rect(0, 0, 600, 600);
    //coloro di nuovo il cibo
    coloraCibo();
  }
  
  //Porto ogni elemento della matrice a 0, ovvero CELLA VUOTA
  public void inizializzaCampo(){
    for(int i = 0; i < this.lunghezza_coda; i++){
      for(int y = 0; y < this.lunghezza_coda; y++){
        campo[i][y] = 0; //Vuol dire che il campo è vuoto
      }  
     }
     sfondoCampo();
  }
  
  //Controllo che la testa non abbia toccato i bordi
  public void controlloCampo(int c_x, int c_y)throws Exception{
     
    if(c_y <= 0 || c_y >= 600 || c_x <= 0 || c_x >= 600){
      throw new Exception("Hai perso!");
    }
  }
  
  //Genero in maniera casuale la posizione del cibo e controllo che non sia una cella occupata dal serpente (ovvero 1)
  public void GeneraCibo(int x_testa, int y_testa){
    this.x_cibo = x_testa;
    this.y_cibo = y_testa;
    while(campo[this.x_cibo/20][this.y_cibo/20] == 1 ){
        this.x_cibo = ((int)random(1, 28))*20;
        this.y_cibo = ((int)random(1, 28))*20;
    }
    coloraCibo();
 
  }
  
  //La cella del cibo diventa 2 e viene colorata di fucsia
  public void coloraCibo(){
    campo[this.x_cibo/20][this.y_cibo/20] = 2;
    fill(255, 40, 255);
    strokeWeight(1);
    rect(this.x_cibo, this.y_cibo, 20, 20);
  }
   
  
  public void ciboMangiato(){
    String [] coordinate = new String[2];
    coordinate = coda[0].split("-");
    //Controllo che la testa sia la stessa casella del cibo
    if((Integer.parseInt(coordinate[0]))==this.x_cibo && (Integer.parseInt(coordinate[1]))==this.y_cibo){
      //Se è così genero un'altra casella di cibo e incremento lunghezza_coda
      GeneraCibo(Integer.parseInt(coordinate[0]), Integer.parseInt(coordinate[1]));
      lunghezza_coda++;
    }
    
  }
  
  public void coloraCoda(){
      //Scrive per ogni casella della matrice che è occupata dallo snake 1 e inserisce sopra l'immagine della coda
      String [] coordinate = new String[2];    
    for(int y = 1; y<=lunghezza_coda; y++){
      coordinate = coda[y].split("-");
      campo[Integer.parseInt(coordinate[0])/20][Integer.parseInt(coordinate[1])/20] = 1;
      fill(255,255,0);
      //rect(Integer.parseInt(coordinate[0]), Integer.parseInt(coordinate[1]), 20, 20);
      stroke(0,0, 255);
      image(Icoda, Integer.parseInt(coordinate[0]), Integer.parseInt(coordinate[1]), 20, 20);
    }
  }
  
  //Ogni casella della coda alla fine è uguale a quella precedente
  public void movimentoCoda(){
    for(int u = lunghezza_coda; u>0; u--){
      this.coda[u] = this.coda[u-1];
    }
  }
  
  
  public void aggiornaCampo(int testa_x, int testa_y){

    inizializzaCampo(); 
    //Inizializzo la cella del campo e la prima della coda, alle coordinate della testa in base al movimento che ha fatto
    campo[testa_x/20][testa_y/20] = 1;
    this.coda[0] = testa_x + "-" + testa_y;
    //Faccio i vari controlli
    ciboMangiato();
    
    movimentoCoda();
    
    coloraCoda();
  }
  public void coloraTesta(int testa_x, int testa_y){image(Itesta, testa_x, testa_y, 20, 20);}

}
