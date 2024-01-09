#import "meta.typ": inizio_incontro, fine_incontro, luogo_incontro
#import "functions.typ": glossary, team
#let participants = csv("participants.csv")

= Partecipanti
/ Inizio incontro: #inizio_incontro
/ Fine incontro: #fine_incontro
/ Luogo incontro: #luogo_incontro

#table(
  columns: (3fr, 1fr),
  [*Nome*], [*Durata presenza*],
  ..participants.flatten()
)
= Sintesi Elaborazione Incontro

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/
== Ampliamento delle _Norme di Progetto_

L'incontro si è aperto con una breve discussione riguardante la necessità di normare l'utilizzo di alcune automazioni realizzate recentemente dal team. In particolare, si è deciso di inserire una descrizione pertinente all'aggiornamento del contenuto del sito vetrina #link("https://swatengineering.github.io/") ogni qual volta vengono apportate modifiche al branch "main" della #glossary[repository] documentale. Questo riguarda anche lo script di verifica della corrispondenza tra i termini marcati come termini di glossario in un documento e quelli effettivamente presenti all'interno del _Glossario v1.0_ e lo script di generazione di tabelle e grafici relativi al consuntivo di ciascuno #glossary[sprint] all'interno del _Piano di Progetto v1.0_.

== Modifica del _Piano di Progetto_

Il team, avendo notato che la pianificazione e i preventivi che erano stati precedentemente realizzati per ogni #glossary[sprint] fino al termine del progetto (fino all terza revisione CA) inevitabilmente non riflettono più l'andamento attuale del lavoro, ha deciso di eliminare la pianificazione a lungo termine dal _Piano di Progetto_ e sostituirla con una pianificazione a breve termine (2 #glossary[sprint] in avanti). Le ragioni principali che hanno motivato suddetta scelta sono:
  - Pianificazione e relativi preventivi a lungo termine sono stati realizzati al termine del secondo #glossary[sprint] quando il team non aveva ancora avuto tempo a sufficienza per poter fare una stima accurata della propria velocità di progressione e della portata della frazione di progetto da portare a termine in vista della prima revisione RTB; di conseguenza, ne è risultata una pianificazione poco flessibile e del tutto svincolata dalla realtà che, in aggiunta ad aver fornito una stima non particolarmente accurata della ripartizione delle ore produttive totali a disposizione per le 3 #glossary[milestone] principali o revisioni, non aiuta in modo significativo;
  - La mancanza di flessibilità della pianificazione rende difficile modificarla nel caso in cui, come si è verificato, ci sia uno slittamento o un ritardo nel portare a termine il lavoro preventivato per una #glossary[milestone] di particolare importanza come può esserlo la prima revisione RTB. Il team aveva inizialmente pianificato di riuscire a sostenere la revisione entro la fine di Dicembre ma, dati i tempi prolungati necessari per modificare e revisionare a fondo tutta la documentazione, ciò non sarà possibile fino a metà Gennaio circa. Dovendo necessariamente tenere conto di questo cambio di programma, la pianificazione deve essere modificata in modo da facilitare cambiamenti repentini dovuti ad imprevisti di questo genere;
  - La pianificazione deve anche essere sufficientemente flessibile da poter cambiare il quantitativo o la ripartizione delle ore preventivate per ruolo negli #glossary[sprint] futuri senza dover modificare fondamentalmente tutto fino al termine del progetto. Infatti, il team si è accorto che le ore da Amministratore inizialmente preventivate sono ampiamente insufficienti a coprire le esigenze di stesura della documentazione (in particolare le _Norme di Progetto_ e il _Piano di Qualifica_) e, di conseguenza, è necessario dedicare più ore a tale ruolo (in modo da non dover limitare l'uso di queste ore all'interno dei preventivi solo per rispettare la pianificazione iniziale).

== Revisione in stile "walkthrough" dell'_Analisi dei Requisiti_

Avendo sostanzialmente ultimato la stesura dell'_Analisi dei Requisiti_, il team ha deciso di iniziarne la revisione in stile "walkthrough" o "lettura a pettine" in modo da individuare eventuali errori o inconsistenze e correggerli tempestivamente dato che il documento sarà oggetto della prima parte della revisione RTB assieme al PoC. 

== Inizio della presentazione per la revisione RTB

Come ultimo punto il team ha discusso della necessità di cominciare ad impostare il contenuto della presentazione RTB, compito che è stato affidato al Responsabile. 

== Assegnazione dei ruoli

Su proposta dei componenti è stata assegnata la seguente distribuzione dei ruoli:

  - Simone Caregnato: Analista, Amministratore;
  - Riccardo Costantin: Programmatore, Verificatore;
  - Giacomo D'Ovidio: Amministratore, Verificatore;
  - Nancy Kalaj: Amministratore;
  - Matteo Rango: Responsabile, Amministratore;
  - Riccardo Toniolo: Amministratore, Verificatore.