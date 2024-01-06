#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori

== Primo sprint
#rendicontazioneOreAPosteriori(sprintNumber: "01")

#rendicontazioneCostiAPosteriori(sprintNumber: "01")

=== Analisi a posteriori

Il consuntivo, relativo allo sprint corrente, evidenzia significative disparità rispetto al preventivo, soprattutto in merito alla distribuzione dei ruoli. Tale deviazione è imputabile al cambiamento dei ruoli assegnati, avvenuto a metà sprint, circostanza non prevista durante la fase di pianificazione iniziale. Dato il considerevole aumento complessivo delle ore rispetto a quanto inizialmente previsto nel preventivo, diventa essenziale adottare un approccio più attento nella fase di pianificazione e apportare gli adeguamenti necessari ai futuri preventivi (in particolare, assegnare più di un ruolo ai componenti del team qualora lo si ritenga necessario).
La turnazione straordinaria dei ruoli (e, di conseguenza, l'assunzione di almeno due ruoli da parte di ciascun componente del team) si è resa necessaria per due motivi principali: 
  - Si è voluta velocizzare la rotazione dei ruoli all'interno del team, in modo da assicurarsi che ogni componente venisse esposto ai diversi ruoli in ugual misura. In altre parole, ci si è resi conto che assegnare un unico ruolo a ciascuno per l'intera durata dello sprint (2 settimane) non favorisce una rotazione sufficientemente rapida;
  - Dopo il primo incontro con la Proponente, il team ha identificato la necessità di impiegare delle ore da Programmatore per iniziare a lavorare allo sviluppo del PoC.


Avendo dispiegato un ampio quantitativo di ore produttive, il team non ha avuto difficoltà a raggiungere gli obiettivi prefissati in partenza; in particolare, si è riusciti a realizzare una prima bozza completa dell'_Analisi dei Requisiti_ da sottoporre al professor Cardin e una parte del PoC, provvista delle funzionalità richieste dalla Proponente. In quanto ad eventuali rischi, l'unico ad essere emerso è stato RT1 o Conoscenza tecnologica limitata; fortunatamente le misure preventive adottate si sono dimostrate molto efficaci nel livellare le lacune dei componenti relative alle tecnologie impiegate nello sviluppo del PoC, in particolare:
    - È stato effettuato un incontro di formazione con la Proponente sulla tecnologia _Docker Compose_ per facilitare le fasi iniziali dello sviluppo del PoC; questo ha reso significativamente più semplice l'approccio alla tecnologia ai membri del team che non avevano familiarità con essa e ha contribuito a velocizzare lo sviluppo;
    - È stato effettuato anche un incontro di _workshop_ interno incentrato su _Docker Compose_ in cui i componenti che avevano già utilizzato tale tecnologia ne hanno illustrato scopo e funzionamento e hanno dimostrato come applicarla nel contesto concreto del PoC per containerizzare i moduli Python e Kafka.
