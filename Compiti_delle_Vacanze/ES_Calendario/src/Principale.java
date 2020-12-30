public class Principale {
    private CLInput cli;
    private Calendario calendario;

    Principale(){
        cli = new CLInput();

    }
    public static void main(String[] args){
        Principale p;
        p = new Principale();
        p.crea_data();

    }
    public void crea_data(){
        try{
            int giorno = cli.readInt("Inserire il giorno: ");
            int mese = cli.readInt("Inserire il mese: ");
            int anno = cli.readInt("Inserire l'anno: ");
             calendario = new Calendario(giorno, mese, anno);
           // System.out.println("Data memorizzata correttamente");
            // System.out.println(calendario.sommaGiorni(cli.readInt("Inserire il numero di giorni da sommare: ")));

            int giorno1 = cli.readInt("Inserire il giorno: ");
            int mese1 = cli.readInt("Inserire il mese: ");
            int anno1 = cli.readInt("Inserire l'anno: ");
            System.out.println(calendario.differenzaDate(giorno1, mese1, anno1));


        } catch (Exception e) {
            System.out.println(e.getMessage());
            crea_data();
        }


    }
}
