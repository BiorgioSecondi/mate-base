# mate-base test

questa repo contiene il sorgente del PDF con la teoria base di matematica olimpica del liceo Volta di Milano,
e forse in futuro conterrà anche la teoria avanzata!

scarica [QUI](https://github.com/BiorgioSecondi/mate-base/releases/download/main/TeoriaBase.pdf) l'ultima versione del file

## come contribuire
chiunque può contribuire, non è necessario saper usare LaTeX o altro!
occorre solamente un [account GitHub](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home)

ci sono vari modi di contribuire:
- il **più utile** è sicuramente modificare il file con correzioni matematiche o grammaticali, precisazioni e aggiunte: nelle sezioni seguenti varie guide per farlo!
- puoi in modo simile migliorare questa guida
- il **più semplice** ma comunque molto utile è andare nella sezione issues in alto in questa pagina, per segnalare problemi ed errori (anche per errori che vi sembrano insignificanti o errori di rendering del PDF: segnalate qualunque cosa!) o suggerire aggiunte, utilizzando il tasto new issue e mettendo nel pannello a destra il label corretto: `bug` nel primo caso, `enhancement` nel secondo. qui potete anche commentare e aggiungere dettagli o suggerire correzioni sulle issue create da altri, e proporre di chiudere quelle vecchie per problemi già risolti nell'ultima versione del PDF.
- puoi anche guardare la sezione pull requests, dove trovi le modifiche in attesa di approvazione, e commentarle se ci trovi delle imperfezioni.

infine, in fondo a questa pagina, troverai anche una guida al LaTeX e asymptote per aiutarti a modificare il file! (al momento ancora TODO)

### con l'editor online GitHub
questo metodo è utile soprattutto se hai trovato piccole imprecisioni o errori che vuoi correggere,
è poco adatto ad espandere in modo significativo il contenuto del file.

- clicca sul file TeoriaBase.tex nella lista qua sopra (o sul file README.md se vuoi modificare questa guida)
- clicca `e` oppure il simbolo della matita in alto a destra per iniziare a modificare il file
- se non conosci LaTeX non farti spaventare dal codice, modifica tranquillamente il testo normale aggiungendo le precisazioni e correzioni che vuoi (se non trovate la parte che volete modificare, cercala con `ctrl+F` o su un mac `cmd+F`)
- clicca commit changes, il tasto verde in alto a destra
- scrivi un messaggio che indichi brevemente cosa hai cambiato (obbligatorio), se vuoi spiegare meglio metti una descrizione della modifica (opzionale)
- clicca propose changes, poi create pull request, se vuoi aggiungere qualche nota scrivila nel campo apposito (opzionale), infine conferma
- hai finito!
- in un paio di minuti comparirà un link alla preview del risultato delle tue modifiche (se le modifiche riguardano il PDF e non questo file). se le modifiche contengono errori nel LaTeX, la generazione della preview fallirà
- le modifiche compariranno nel file ufficiale solo dopo che uno studente coi permessi di farlo avrà controllato e accettato le tue modifiche

### con editor a scelta in locale e git cli
consigliato per chi conosce LaTeX e vuole fare modifiche più sostanziose.
ti servirà installare un editor a scelta (specifico per LaTeX o editor di codice generico), [installare git](https://github.com/git-guides/install-git), e usare un po' il terminale.
Qualunque sia il vostro sistema operativo, avete una o più app di terminale già installate: cercate qualcosa che inizi con `term` nella barra di ricerca windows o nella barra di ricerca che compare premendo `cmd+spazio` su macOS, o se preferite usate `powershell` su windows (è installato di default). Se usate linux probabilmente sapete aprire e usare un terminale quindi saltate la prima parte della spiegazione.

iniziamo con dei **comandi di base** da terminale per spostarsi tra i propri file:
- `pwd`: print working directory - il terminale mostrerà il percorso della cartella in cui ti trovi
- `ls` (linux, macOS, powershell), `dir` (windows): list - elenca i file e le cartelle nella cartella corrente (per mostrare anche i file invisibili `ls -a` o `dir /a`
- `cd nome-directory`: change directory - per entrare in una cartella dentro la cartella corrente, `cd ..` per uscire dalla cartella corrente, mentre state scrivendo il nome della cartella premere tab lo completerà, se il nome contiene degli spazi deve essere messo tra virgolette

per il **setup iniziale**, che dovrai fare una volta sola, vai nella cartella che vuoi con i comandi precedenti, poi scrivi `git clone https://github.com/BiorgioSecondi/mate-base`
git creerà una cartella con tutto il necessario chiamata mate-base: entraci con `cd mate-base`

fai le modifiche che vuoi ai file all'interno della cartella, con l'editor che vuoi. Se per mostrarti un'anteprima del risultato il tuo editor genera dei file, non occorre eliminarli.
Se il tuo editor non genera il PDF, oppure ha problemi nel farlo o non supporta asymptote, ma vuoi vedere il risultato delle tue modifiche, puoi installare `texlive-full` e `asymptote` e poi nel terminale, nella cartella mate-base, fare `latexmk --pdf TeoriaBase.tex`.

**quando hai finito di modificare** dal terminale nella cartella mate-base fai i seguenti comandi:
- `git status`: ti dirà quali file hai modificato, e di questi quali modifiche sono tracciate e quali no.
- `git add nome-file`: aggiunge un file ai file tracciati, così le modifiche verranno caricate, `git add .` per tracciare tutti i file.
- `git rm --cached nome-file`: smette di tracciare un file, ma lo lascia sul tuo dispositivo.
- `git status`: controlla di stare tracciando i file che vuoi. Se no, usa i comandi precedenti per correggere.
- `git commit -m "messaggio"`: git salva la serie di modifiche e la tiene pronta per inviarla, con un messaggio che vedrà chi dovrà approvare le modifiche. puoi modificare ancora i file e creare nuovi commit prima di passsare al passaggio successivo. A volte richiede che tu imposti un nome e una mail, ma nel caso ti dirà i comandi per farlo.
- `git push`: invierà al sito tutti i tuoi commit. per farlo però ti chiederà il tuo username di GitHub e un token, che puoi generare [qui](https://github.com/settings/tokens/new) (metti quello che vuoi come note e durata, sotto la voce select scopes metti `repo` e `workflow`. se qualcosa è andato storto degli errori ti spiegheranno cosa e come sistemare.
- ora i tuoi cambiamenti saranno in attesa di approvazione, quando saranno approvati compariranno nella versione ufficiale del file sul sito. nel frattempo puoi vedere in anteprima le tue modifiche al PDF nella tua pull request sul sito (ci mettono un paio di minuti a comparire). se la generazione della preview fallisce, probabilmente c'è qualche errore nel LaTeX che hai modificato. 

per **aggiornare la propria copia locale** all'ultima versione (importante farlo spesso! fatelo sempre prima di iniziare a modificare per evitare problemi) usate `git pull`
questo potrebbe eliminare eventuali modifiche locali che non avete inviato con `git commit` e `git push`


### altri metodi
se non ti piace l'editor online né usare il terminale, esistono tante app per aiutarti a usare git e a scrivere LaTeX,
puoi seguire qualsiasi tutorial tutorial a riguardo e probabilmente funzionerà,
ricordati però che questo documento usa il pacchetto `asymptote` per le immagini, che solitamente non è incluso di default.

se sai già usare git e LaTeX, ricordati comunque di installare `asymptote` e tutte le altre dipendenze necessarie. Al momento non c'è una lista ma a parte `asymptote` sono tutte parte di `texlive-full`

## guida alla modifica del LaTeX e asymptote
TODO: se vuoi scrivere qualcosa qui, ogni contributo è apprezzato! lascia però questo TODO all'inizio finché la guida non è abbastanza completa.
