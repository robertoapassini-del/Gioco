# Pallone nella Spacca

Gioco arcade in pixel art per cellulare. Ogni giocatore ha il suo figghiuleddu e tira il pallone in alto
dentro la **spacca**, la fessura stretta tra due palazzi. Vince chi incastra il pallone più in alto.

## Come si gioca
All'avvio scegli **SINGLE PLAYER** (da solo, a livelli) oppure **MULTIPLAYER** (da 2 a 8 amici sullo stesso telefono, a turno).

Si tira da dentro la spacca, dal vialetto che porta alle scale. C'è **un solo punto** dove il pallone si incastra:
**in alto a sinistra, sotto lo sbalzo**.
- **Trascina u figghiuleddu** per spostarlo nel vialetto.
- **Tieni premuto** in un altro punto dello schermo per caricare il tiro, e intanto **trascina a destra o a sinistra** per inclinarlo (la freccia gialla mostra la direzione). **Lascia** per calciare.
- Ogni volta che il pallone tocca un muro della spacca perde forza. Siccome l'incastro è di lato, bisogna tirare storto o di sponda, e dare abbastanza potenza.
- Se arriva nell'angolo si incastra, anche se arriva forte. Se tocca lo sbalzo da un'altra parte, ricade.
- Il pallone incastrato **resta lassù**, e il prossimo deve **buttarlo giù**.
- Punti: **+1 per ogni incastro**, **+1 se butti giù il pallone di un altro**. In caso di pareggio vince chi è andato più vicino all'incastro (il gioco mostra la distanza in cm dopo ogni tiro).
- Il **vento** soffia a raffiche e cresce a ogni round. I **piccioni** deviano il pallone.
- In multiplayer giocano da 2 a 8 figghiuleddi (Uca, Fabio, Tano, Giammy, Paso, Lazzo, Eddy e Saro), con 3 o 5 tiri a testa.

## Single player
Scegli il tuo figghiuleddu: ogni livello si supera **incastrando il pallone**. Hai 3 palloni, e ogni tiro sbagliato te ne
costa uno. Ogni 5 livelli superati guadagni un pallone.

Livello dopo livello aumentano il vento e la velocità della barra, arrivano i piccioni, la spacca si stringe e la zona
dell'incastro diventa più piccola. Dal livello 3 la posizione da cui tiri la decide il gioco, sempre più lontano dall'incastro.
Poi arrivano i disturbi:
- **la signora** (dal livello 4) si affaccia e urla *"Ouuuu! A finemu cu stu palluni?!"*: u figghiuleddu si spaventa, la barra impazzisce e la mira si sposta;
- **la macchina col basso** (dal livello 6), fuori dallo schermo: a ogni colpo di basso u figghiuleddu trema e la mira balla;
- **il cane** (dal livello 8): prima ringhia, poi abbaia, e se in quel momento stai caricando ti spaventi e il tiro parte da solo!

## I figghiuleddi
Ognuno ha le sue caratteristiche, sia in single player sia in multiplayer:
| Figghiuleddu | Caratteristica |
|---|---|
| Uca | normale, ma ogni tanto gira all'impazzata (nel fumetto: *"azzamittru, azzamittru, yeah yeah"*): mentre gira la mira va a caso |
| Fabio | debole (tira meno forte), ma i piccioni non lo deviano |
| Tano | il più forte, ma senza capelli non capisce il vento: la freccia del vento gli va a caso |
| Giammy | il meno preciso: l'angolo del tiro gli sbanda |
| Paso | non ci vede bene: durante il suo turno è tutto sfocato |
| Lazzo | tira fortissimo, ma regolare la potenza è un dramma: la barra gli scappa e se tira troppo forte il pallone rimbalza via. Quando tira forte: *SBAUM!* Quando incastra si gira, si toglie gli occhiali e la telecamera stringe sui suoi occhi spalancati: *BELLINO!* |
| Eddy | pelato, barba corta, canotta da basket: spesso arriva Giammy (*"Eddy, tocca a me!"*), Eddy sbotta (*"Gianmarco smettila!"*) e finiscono a spintoni e parolacce da fumetto; a ogni spinta Eddy si sposta e la mira gli balla |
| Saro | a torso nudo, tutto muscoli, col braccio destro tatuato in nero: lancia con le mani: tira più forte, dritto, e ha la freccia di mira più lunga |

## Avvio
È un solo file: apri `index.html` nel browser del telefono. Puoi anche pubblicarlo con GitHub Pages
e aggiungerlo alla schermata Home. Su PC si gioca con le frecce e la barra spaziatrice.

## Classifica online
I record vengono salvati su [Supabase](https://supabase.com), che offre un piano gratuito.
Il gioco è già collegato al progetto Supabase (costanti `SUPABASE_URL` e `SUPABASE_KEY` in `index.html`).
La tabella si crea, o si aggiorna, eseguendo `supabase.sql` in **SQL Editor**. Le classifiche sono due: SINGLE (livello raggiunto) e MULTI (incastri in una partita).
