/*ES1 -Preparare con processing un biglietto di auguri per le feste natalizie- */
AlberoNatale aN;
PImage immagine;

 public void setup (){
   size(500, 500);
   background(0, 127 ,255);
   aN = new AlberoNatale(500, 500);
   //aN.luceRandom();
   immagine = loadImage("BabboNatale.png");
   image(immagine, 255, 200, 400, 400);
 }
 
 public void draw (){
   background(0,127,255);
   //aN.luceRandom();
   aN.disegnaAlbero();
   image(immagine, 255, 200, 400, 400);
   
   textSize(50);
   fill(255, 0, 0);
   text("Buon Natale!", 100, 150);
   delay(500);
   
 }
