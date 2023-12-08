#import "../../functions.typ": glossary

=== Nono Sprint

*Inizio*: Venerdì 02/02/2024

*Fine*: Giovedì 08/02/2024 

*Obiettivi dello sprint*: 

  - Continuazione _Specifiche Tecniche_;
  - Continuazione _Manuale Utente_;
  - Continuazione _Manuale Sviluppatore_;
  - Implementare l'invio dei dati dei simulatori al #glossary("topic") corretto del #glossary("broker") di Kafka;
  - Impostare numero appropriato di partizioni dei topic per garantire #glossary("scalabilità") e  #glossary("portabilità");
  - Configurazione della #glossary("retention policy")  dei messaggi;
  - Impostazione della dimensione del #glossary("batch") e dell'intervallo di invio, per l'ottimizzazione della latenza ed dell'efficienza;
  - Certificati di sicurezza per la comunicazione dati? [Revisore]
  - Esecuzione di test specifici per la scalabilità del sistema.

*Suddivisione lavoro*:

#figure(
  image("../../assets/DiagrammiGantt/DiagrammaNonoSprint.png", width: 100%),
  caption: [
    Diagramma di Gantt per le attività del nono sprint.
  ],
)