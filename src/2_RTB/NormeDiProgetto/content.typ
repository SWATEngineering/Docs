#import "functions.typ": glossary, team

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione

== Glossario
Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene
fornito il _Glossario_, nel quale sono presenti tutte le definizioni di termini aventi uno
specifico significato che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e
marcati con una #sub("G") a pedice.

== Scopo del Documento
Il presente documento ha come scopo la definizione delle #glossary[best practices] e del #glossary[way of working] che ogni componente del #team ha l'obbligo di rispettare durante l'intero svolgimento del progetto. In questo modo si prova a garantire un metodo di lavoro omogeneo, verificabile e miglorabile nel tempo.

#pagebreak()

= Processi di Supporto

== Documentazione

=== Scopo

Lo scopo del seguente processo è la definizione degli standard e degli strumenti utili alla stesura di tutti i documenti, necessari alla buona riuscita del progetto.

=== Ciclo di Vita del Documento
/ #glossary[Corsie di Stato]: descrivono lo stato attuale del documento.
/ Backlog: attività individuate da svolgere.
/ Ready: attività individuate per il completamento durante il prossimo #glossary[sprint].
/ In Progress: attività che sono in corso d'opera da parte dei redattori.
/ Ready to Review: attività svolte che sono pronte per essere revisionate.
/ In Review: attività in corso di revisione da parte dei revisori.
/ Done: attività le cui modifiche sono state revisionate e accettate.

Ogni nuovo documento segue le fasi del seguente #glossary[workflow]:
+ Si crea un branch per lo sviluppo del documento e si mette in uso.
+ Si copia dall'apposita repository `Templates` il template relativo al file che si deve redigere, e lo si inserisce nella cartella appropriata.
+ Si redige il documento o una sua sezione.
+ Nel file `changelog.typ` si aggiunge una riga *in coda*, secondo il seguente formato: `<versione>,<data-modifica>,<descrizione-modifica>,<nome-autore>,<ruolo-autore>`; la versione segue le regole descritte nella @versionamento.
+ Si esegue la commit sul branch creato.
+ Si apre una _pull request_ dal branch appena creato verso il branch `main`: se il documento non è pronto per la revisione, ma ha bisogno di ulteriori modifiche, si apre la _pull request_ in modalità `draft`, altrimenti in modalità normale.
+ Per ulteriori modifiche richieste dal revisore si ripetono i punti, *in ordine*, dal punto _3_ al punto _5_.
+ Si elimina, *solo quando la pull request viene chiusa o risolta*, il branch creato.

La modifica di un documento avviene allo stesso modo, saltando il passo 2.
Ogni cambiamento di stato è accompagnato dal conseguente movimento della issue, associata allo sviluppo, attraverso le diverse corsie dell'issue tracking system.
La revisione del documento avviene tramite apposito metodo nell'ITS, attraverso la revisione nella _pull request_, indicando i punti in cui si richiede la modifica, il motivo della richiesta e una proposta se necessario. Anche in questo caso il revisore si occupa di spostare la issue di riferimento, nelle corsie appropriate, chiudendole se la revisione è terminata con successo, o spostandola nuovamente nella corsia _In Progress_ quando vengono richieste altre modifiche.

=== Nomenclatura
La consueta nomeclatura per i documenti si ottiene unendo, attraverso un underscore (`_`), il nome del file in _CamelCase_ senza spazi (`NomeDelFile`) e la sua versione (`3.5`). Ad esempio `NormeDiProgetto_2.6.pdf`.

=== Versionamento <versionamento>
Il versionamento avviene secondo il seguente formato *x.y*:
- *y* si incrementa una volta effettuata una modifica e la sua conseguente revisione;
- *x* si incrementa quando si effettua la modifica definitiva in vista di una revisione di avanzamento, questo comporta l'azzeramento di *y*.

Due modifiche, fatte in momenti diversi, differiscono l'una dall'altra solo se hanno scopi diversi. Ad esempio non è necessario incrementare la versione se viene fatta una modifica alla stessa sezione in due giorni differenti; anche se faccio una modifica, ed essa non viene approvata, non è necessario incrementare la versione con le nuove modifiche proposte dal revisore, dal momento che modifica e revisione "viaggiano" parallelamente.

= Processi Organizzativi

== Gestione Organizzativa

=== Decisioni
Per poter prendere una qualsiasi decisione è necessario vi siano due condizioni:
+ Si deve raggiungere il #glossary[quorum] di quattro persone su sei;
+ La decisione deve essere verbalizzata e motivata.