/*
ES3 -Un gioco tipo "snake" (come quello che vi ho mostrato in classe): con schermata iniziale, un modo di guadagnare punti, ecc...-
*/
Snake sn;
Campo cp;

public void setup(){
  size(600, 600);   //La matrice è formata da celle 20x20, quindi ci sono 30x30 celle
  sn = new Snake();
  cp = new Campo();
 
}

public void draw(){  
  try{
    
    cp.aggiornaCampo(sn.getCoordinate_x(), sn.getCoordinate_y());
    delay(250);
    
    Frecce();
     
  }catch(Exception e){
    //Faccio comparire la scritta hai perso ed esco dal gioco
      fill(255, 0, 0);
      textSize(50);
      text("Hai perso", 150, 300);
      delay(250);
      exit();   
  }
 
  
}

public void Frecce()throws Exception{   
     fill(0, 230, 0);
    stroke(0, 230, 0);
    
   //In base all'ultimo pulsante premuto lo snake si sposta in una casella in alto, basso, sinistra o destra
   if(keyCode==UP){
    sn.muoviAlto();
    }
    else if(keyCode==DOWN){
      sn.muoviBasso();
    }
    else if(keyCode == LEFT){
      sn.muoviSinistra();
    }
    else if(keyCode == RIGHT){
      sn.muoviDestra();
    }
    //"Coloro" la testa dello snake e faccio i controlli per vedere che non sia uscito dal campo
    cp.coloraTesta(sn.getCoordinate_x(), sn.getCoordinate_y());
    cp.controlloCampo(sn.getCoordinate_x(), sn.getCoordinate_y());
    
 

}
