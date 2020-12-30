

public class Snake{
  private int coordinate_x = 280;
  private int coordinate_y = 280;
 
  public Snake(){
    
  }
  
  public void muoviSinistra(){

    //Lo snake si muove a sinistra di una casella
    this.coordinate_x -=20;

  
  }
  public void muoviDestra(){
    //Lo snake si muove a destra di una casella
    this.coordinate_x +=20;   
 

  
  }
  public void muoviAlto(){

    //Lo snake si muove in alto di una casella
    this.coordinate_y -=20; 
      
  }
  
  public void muoviBasso(){

    //Lo snake si muove in basso di una casella
    this.coordinate_y +=20; 


  }
  

  


  
  

  
  public int getCoordinate_x(){return this.coordinate_x;}
  public int getCoordinate_y(){return this.coordinate_y;}
  
   

}




/*
1 -   0:20
2 -  20:40
3 -  40:60
4 -  60:80
5 -  80:100
6 - 100:120
7 - 120:140
8 - 140:160
9 - 160:180
10- 180:200
11- 200:220
12- 220:240
13- 240:260
14- 260:280
15- 280:300
16- 300:320
17- 320:340
18- 340:360
19- 360:380
20- 380:400
21- 400:420
22- 420:440
23- 440:460
24- 460:480
25- 480-500
26- 500:520
27- 520:540
28- 540:560
29- 560:580
30- 580-600

*/
