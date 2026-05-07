# Task 1 — Physical Volume

I due dischi virtuali sono già collegati al sistema. Prima di toccare qualsiasi cosa, verifica che ci siano davvero.

Controlla i loop device attivi — dovresti vedere `/dev/loop10` e `/dev/loop11`. Se non li vedi, aspetta qualche secondo: il sistema sta ancora finendo il setup.

Leggi anche il promemoria che Mario ha lasciato nella sua home, così sai cosa ti aspetta nei prossimi task.

---

Quando sei pronto, inizializza entrambi i dischi come Physical Volume. È il comando con cui "consegni" un disco a LVM — scrive i propri metadati all'inizio del device e da quel momento LVM lo riconosce come suo.

Dopo, verifica con `pvs` che siano comparsi entrambi. Prova anche `pvdisplay` per vedere i dettagli — in particolare il campo **PE Size**, che vale la pena capire prima di andare avanti.
