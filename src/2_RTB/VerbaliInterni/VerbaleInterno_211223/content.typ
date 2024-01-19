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

Il team, constatando che la pianificazione e i preventivi redatti per ciascun #glossary[sprint] fino alla conclusione del progetto (ovvero la terza revisione CA) non rispecchiano più l'attuale progresso del lavoro, ha deciso di eliminare la pianificazione a lungo termine dal _Piano di Progetto v1.0_ e di sostituirla con una pianificazione a breve termine (2 #glossary[sprint] in avanti). Le ragioni principali che hanno motivato questa scelta sono le seguenti:
  - Pianificazione e relativi preventivi a lungo termine sono stati realizzati al termine del secondo #glossary[sprint] quando il team non aveva ancora avuto tempo a sufficienza per poter fare una stima accurata della propria velocità di progressione e della portata della frazione di progetto da portare a termine in vista della prima revisione RTB. Di conseguenza, la pianificazione risultava poco flessibile e del tutto svincolata dalla realtà, fornendo inoltre una stima poco precisa della distribuzione delle ore complessive dedicate alle 3 #glossary[milestone] principali o revisioni;
  - La mancanza di flessibilità della pianificazione rende difficile modificarla nel caso in cui, come si è verificato, ci sia uno slittamento o un ritardo nel portare a termine il lavoro preventivato per una #glossary[milestone] di particolare importanza come può esserlo la prima revisione RTB. Nonostante il team avesse inizialmente pianificato di sostenere la revisione entro la fine di dicembre, la necessità di apportare modifiche approfondite e rivedere l'intera documentazione ha comportato un ritardo fino a metà gennaio circa. Pertanto, è indispensabile rendere la pianificazione più flessibile per affrontare imprevisti di questo genere;
  - La pianificazione deve anche essere sufficientemente flessibile da poter cambiare il quantitativo o la ripartizione delle ore preventivate per ruolo negli #glossary[sprint] futuri senza dover modificare fondamentalmente tutto fino al termine del progetto. Il team ha constatato che le ore inizialmente previste per il ruolo di Amministratore sono nettamente insufficienti per coprire le esigenze di redazione della documentazione, in particolare le _Norme di Progetto v1.0_ e il _Piano di Qualifica v1.0_. Di conseguenza, è necessario dedicare più ore a questo ruolo, evitando così di limitare l'uso di tali ore solo per rispettare la pianificazione iniziale.

== Revisione in stile "walkthrough" dell'_Analisi dei Requisiti_

Avendo sostanzialmente ultimato la stesura dell'_Analisi dei Requisiti v1.0_, il team ha deciso di iniziarne la revisione in stile "walkthrough" o "lettura a pettine" in modo da individuare eventuali errori o inconsistenze e correggerli tempestivamente, dato che questo documento è il principale oggetto della  revisione RTB assieme al PoC. 

== Inizio della presentazione per la revisione RTB

Come ultimo punto il team ha discusso della necessità di cominciare a impostare il contenuto della presentazione RTB, compito che è stato affidato al Responsabile. 

== Assegnazione dei ruoli

Su proposta dei componenti è stata assegnata la seguente distribuzione dei ruoli:

  - Simone Caregnato: Analista, Amministratore;
  - Riccardo Costantin: Programmatore, Verificatore;
  - Giacomo D'Ovidio: Amministratore, Verificatore;
  - Nancy Kalaj: Amministratore;
  - Matteo Rango: Responsabile, Amministratore;
  - Riccardo Toniolo: Amministratore, Verificatore.