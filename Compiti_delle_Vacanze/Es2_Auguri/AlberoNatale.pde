public class AlberoNatale{
  
  private int altezza;
  private int lunghezza;
  private color tronco = color(65, 43, 21);
  private color albero = color(28, 72, 33);
  
  public AlberoNatale(int lunghezza, int altezza){
    this.altezza = lunghezza;
    this.lunghezza = altezza;
  }
  
  public void disegnaAlbero(){
    //luceRandom();
    disegnaTronco();
    
    for(int i = 0; i < 13; i++){
      disegnaChioma(i);
      disegnaPalline(i, 7);
    }
    for (int in = 13; in < 20; in++){
      disegnaPalline(in, 2);
   }
    
  
  }
  public void disegnaTronco(){
    //Faccio un rettangolo marrone
    fill(this.tronco);
    stroke(this.tronco);
    rect((lunghezza/2)-25, (altezza-150), 50, 150);
    
    
    
  }
  
  public void disegnaChioma(int i){
   fill(this.albero);
   stroke(0,0,0);
    if(i%2 != 0){
       fill(255, 0, 0);
       stroke(255, 0, 0);
   }
   
   triangle(((this.lunghezza+i*20)/2)-200, ((this.altezza-i*20)-49), ((this.lunghezza-i*20)/2)+200, ((this.altezza-i*20)-49), (this.lunghezza)/2, (((this.altezza-i*20)-49)-200));
   }
   
   
 public void disegnaPalline(int i, int indice){
   for(int y = 0; y<indice; y++){
     float posizione_pallina = posizionePallina(i);
     float r = random(7, 15);
     //fill(255, 255, 0 , 200);
     color colore = colorePallina();
     fill(255, 255, 0, 200);
     stroke(255, 255, 0, 50);
     //fill(colore, 200);
     //stroke(colore, 50);
     circle (posizione_pallina, ((this.altezza-i*20)-53), 13);
   }
 } 
 
 public float posizionePallina(int i){

   float y =(random(((this.lunghezza+i*20)/2)-200, (((this.lunghezza-i*20)/2)+200)));
   return y;
}



  public color colorePallina(){
    float r = random(0, 255);
    float g = random (0, 255);
    float b = random (0, 255);
    return color(r, g, b);
  }
  
  public void luceRandom(){
    fill(255, 255, 0, 200);
    stroke(255, 255, 0, 100);
    for(int u = 0; u < 120; u++){
      float p_y = random(500);
      float p_x = random(500);
      float r = random(5, 15);
      circle (p_x, p_y, r);
    }
  }
}
