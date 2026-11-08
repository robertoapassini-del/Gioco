# Pallone nella Spacca

Gioco arcade in pixel art per cellulare. Ogni giocatore ha il suo figghiuleddu e tira il pallone in alto
dentro la **spacca**, la fessura stretta tra due palazzi. Vince chi incastra il pallone più in alto.

## Come si gioca
- **Trascina u figghiuleddu** per spostarlo lungo il marciapiede.
- **Tieni premuto** in un altro punto dello schermo per caricare il tiro: la barra a sinistra indica l'altezza.
- Mentre tieni premuto, **trascina a destra o a sinistra** per inclinare il tiro (la freccia gialla mostra la direzione).
- **Lascia** per calciare.
- Il pallone **rimbalza** su balconi, condizionatori, muri e marciapiede: puoi fare tiri **di sponda** per entrare nella spacca.
- Dentro la spacca il pallone sbatte tra i due muri. Si incastra solo se arriva lento, sia in verticale sia di lato.
- Se resta fermo su un balcone, il pallone è perso.
- Colpisci forte un pallone già incastrato e **lo butti giù**. Se ci arrivi piano, ci rimbalzi contro.
- Il pallone si incastra nelle strozzature della spacca (cornicioni e tubi) se ci arriva lento, cioè vicino al punto più alto del tiro.
- Il posto più alto è proprio sotto lo sbalzo del palazzo di destra. Se tiri troppo forte, il pallone sbatte e ricade.
- Se il tuo pallone finisce dove ce n'è già un altro, **lo butta giù** e quello perde il punto.
- Il pallone si incastra solo dal **lato aperto** della strozzatura. Se arrivi dal lato del cornicione, ci sbatti contro e ricadi.
- Il **vento** soffia a raffiche e cambia anche mentre il pallone è in volo. Cresce a ogni round.
- I **piccioni** volano davanti alla spacca: se li colpisci, il pallone devia. A ogni round ce ne sono di più e vanno più veloci.
- La barra di potenza corre più veloce a ogni round, accelera verso l'alto e trema un po'.
- La minimappa a destra mostra i palloni incastrati.
- Da 1 a 5 giocatori sullo stesso telefono (Uca, Fabio, Tano, Giammy e Paso), con 3 o 5 tiri a testa. In modalità solo viene salvato il record.

## Scalata (giocatore singolo)
Scegli il tuo figghiuleddu e sali di livello. Ogni livello ha un obiettivo di altezza (la linea gialla), e ogni 5 livelli
c'è un livello speciale: devi stare in una fascia precisa, e se ci riesci guadagni un pallone. Hai 3 palloni: ogni
tiro che non raggiunge l'obiettivo te ne costa uno.

Livello dopo livello aumentano il vento, la velocità della barra, i piccioni, e la spacca si stringe. Poi arrivano i disturbi:
- **la signora** (dal livello 4) si affaccia e urla *"Ouuuu! A finemu cu stu palluni?!"*: u figghiuleddu si spaventa, la barra impazzisce e la mira si sposta;
- **la macchina col basso** (dal livello 6), fuori dallo schermo: a ogni colpo di basso u figghiuleddu trema e la mira balla;
- **il cane** (dal livello 8): prima ringhia, poi abbaia, e se in quel momento stai caricando ti spaventi e il tiro parte da solo!

Ogni figghiuleddu ha un punto forte:
| Figghiuleddu | Punto forte |
|---|---|
| Uca | parte con 4 palloni |
| Fabio | tiri più angolati e sponde migliori |
| Tano | i piccioni non lo deviano, ma la barra trema di più |
| Giammy | barra di potenza più lenta |
| Paso | il vento lo sposta la metà |

## Avvio
È un solo file: apri `index.html` nel browser del telefono. Puoi anche pubblicarlo con GitHub Pages
e aggiungerlo alla schermata Home. Su PC si gioca con le frecce e la barra spaziatrice.

## Classifica online
I record vengono salvati su [Supabase](https://supabase.com), che offre un piano gratuito.
Il gioco è già collegato al progetto Supabase (costanti `SUPABASE_URL` e `SUPABASE_KEY` in `index.html`).
La tabella si crea, o si aggiorna, eseguendo `supabase.sql` in **SQL Editor**. Le classifiche sono due: TIRI (altezza) e SCALATA (livello).
