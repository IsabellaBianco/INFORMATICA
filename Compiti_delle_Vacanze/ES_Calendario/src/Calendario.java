/*
 Programma da console che permette di lavorare con le date (fare la differenza tra date e
 sommare un numero di giorni ad una data) senza utilizzare GregorianCalendar ma con una vostra classe
 (e considerando gli anni bisestili). Aiuto: Sono da considerare bisestili gli anni divisibili per 4.
 Tra gli anni divisibili per 4 non sono bisestili quelli divisibili per 100.
 Tra quelli divisibili per 100 sono comunque bisestili quelli divisibili per 400.
 */

public class Calendario {
    private int giorno;
    private int mese;
    private int anno;

    public Calendario(int giorno, int mese, int anno) throws Exception {
        setAnno(anno);
        setMese(mese);
        setGiorno(giorno, mese, anno);
    }
//Controllo che l'anno sia compreso tra 0 e 2021
    public void setAnno(int anno) throws Exception {
        if (anno < 0 || anno > 2021) {
            throw new Exception("L'anno deve essere compreso tra 0 e 2021!");
        } else {
            this.anno = anno;
        }
    }
//Controllo che il mese sia compreso tra 1 e 12
    public void setMese(int mese) throws Exception {
        if (mese < 1 || mese > 12) {
            throw new Exception("I mesi sono 12!");
        } else {
            this.mese = mese;
        }
    }
//Controllo che il giorno sia compreso tra 1 e il max di giorni del mese
    public void setGiorno(int giorno, int mese, int anno) throws Exception {
        int giorniInMese = giorniMese(mese, anno);

        if (giorno < 1 || giorno > giorniInMese) {
            throw new Exception("Il numero di giorni è sbagliato!");
        } else {
            this.giorno = giorno;
        }

    }

    //Calcolo in base al mese e all'anno (per febbraio) il numero di giorni del mese
    public int giorniMese(int mese, int anno) {
        int giorniInMese = 0;
        if (mese == 4 || mese == 6 || mese == 9 || mese == 11) {
            giorniInMese = 30;
        } else if (mese == 2) {
            if ((anno % 4 == 0 && (anno % 100 != 0 || anno % 400 == 0))) {
                giorniInMese = 29;
            } else {
                giorniInMese = 28;
            }
        } else {
            giorniInMese = 31;
        }
        return giorniInMese;
    }

    public int getAnno() {
        return this.anno;
    }

    public int getMese() {
        return this.mese;
    }

    public int getGiorno() {
        return this.giorno;
    }


    public String sommaGiorni(int numero_giorni) throws Exception {
        int giorno = this.giorno;
        int mese = this.mese;
        int anno = this.anno;
        //Controllo che il numero sia positivo
        if(numero_giorni < 0){
            throw new Exception("Il numero deve essere positivo!");
        }
        else {
            numero_giorni += giorno; //Sommo i giorni del mese in cui siamo al numero_giorni da sommare
            while (numero_giorni != 0) {
                //Ricavo il numero di giorni del mese e verifico che numero_giorni sia minore
                int giorni_rimanenti_mese = giorniMese(mese, anno);
                if (giorni_rimanenti_mese >= numero_giorni) {
                    //Allora il giorno equivale ai giorni rimanenti
                    giorno = numero_giorni;
                    numero_giorni = 0;
                } else {
                    //Altrimenti lo sottraggo e incremento il mese o l'anno nel caso sia dicembre
                    numero_giorni -= giorni_rimanenti_mese;
                    if (mese < 12) {
                        mese++;
                    } else {
                        mese = 1;
                        anno++;
                    }
                }

            }
        }
        return "Nuova data: "+ giorno +" "+ mese + " " + anno;
    }

    public String differenzaDate(int giorno2, int mese2, int anno2)throws Exception{
        int giorno1 = this.giorno;
        int anno1 = this.anno;
        int mese1 = this.mese;
        int giorno_finale = 0;
        int mese_finale = 0;
        int anno_finale = 0;
        setMese(mese2);
        setAnno(anno2);
        setGiorno(giorno2, mese2, anno2);
        //Verifico che la prima data sia maggiore della prima (più recente)
        if(this.anno < anno1 || (this.anno == anno1 && ((this.mese < mese1)||this.mese == mese1 && this.giorno<=giorno1))){
            int giorni = giorno1;
            //Calcolo la differenza dei giorni
            while(giorni != 0) {
                //Se giorno è minore allora sottraggo i giorni
                if (giorno1 >= this.giorno) {
                    giorno_finale = giorno1 - this.giorno;
                    giorni = 0;
                } else {
                    //Se giorno è maggiore allora sottraggo i giorni, decremento il mese e ricavo i giorniMese
                    this.giorno -= giorni;
                    mese1--;
                    giorno1 = giorniMese(anno1, mese1);

                }

            }
            //Calcolo la differenza dei mesi
            mese_finale = mese1-this.mese;
            //Se il mese1 è minore allora decremento l'anno e faccio 12 - (mesi) altrimenti lascio la differenza
            if(mese_finale<0) {
                anno1--;
                mese_finale = 12+mese_finale;
            }
            //calcolo la differenza degli anni
            anno_finale = anno1-this.anno;
        }

        else{
            throw new Exception("La seconda data deve essere più piccola della prima!");
        }
        return "La differenza tra le date è di: "+ giorno_finale+ " giorni, "+ mese_finale +" mesi e "+ anno_finale + " anni.";
    }



}

