#import "../../functions.typ":glossary

=== Decimo Sprint

*Inizio*: Venerdì 09/02/2024

*Fine*: Giovedì 15/02/2024 

*Obiettivi dello sprint*: 

    - Continuazione _Specifiche Tecniche_;
    - Continuazione _Manuale Utente_;
    - Continuazione _Manuale Sviluppatore_;
    - Codifica del design scelto per la rappresentazione e storage dei dati aggregati su _Clickhouse_;
    - Utilizzo delle #glossary("Materialized Views") per pre-aggregare dati frequentemente richiesti, migliorando le prestazioni delle query;
    - Configurazione dei motori interni ( _engine_) a _Clickhouse_;
    - Inizio della configurazione di Grafana per la visualizzazione dei dati.

    *Suddivisione lavoro*:

#figure(
  image("../../assets/DiagrammiGantt/DiagrammaDecimoSprint.png", width: 100%),
  caption: [
    Diagramma di Gantt per le attività del decimo sprint.
  ],
)