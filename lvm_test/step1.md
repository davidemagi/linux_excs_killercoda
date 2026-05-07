# Task 1 — Inizializza i dischi come Physical Volume

Mario ha già preparato due dischi virtuali e li ha collegati al sistema come loop device. Prima di fare qualsiasi cosa, verifica che siano presenti.

## 1. Verifica lo stato dei dischi

Controlla che i loop device siano attivi e visibili al sistema. Dovresti vedere `/dev/loop10` e `/dev/loop11`.

> 💡 I comandi `losetup -l` e `lsblk` ti mostrano i dispositivi a blocchi attivi.

## 2. Leggi il promemoria di Mario

Mario ha lasciato istruzioni nella sua home. Leggile prima di procedere.

## 3. Inizializza entrambi i dischi come Physical Volume

LVM non può usare un disco finché non viene "consegnato" con il comando apposito. Inizializza `/dev/loop10` e `/dev/loop11`.

## 4. Verifica il risultato

Dopo l'inizializzazione, usa il comando per visualizzare i Physical Volume presenti nel sistema. Dovresti vedere entrambi i dischi con `200.00m` di spazio disponibile e nessun VG assegnato.

> 💡 LVM ha tre livelli di comandi per visualizzare lo stato: uno breve (`pvs`) e uno dettagliato (`pvdisplay`). Prova entrambi.

---

**Risultato atteso:** due PV inizializzati, nessun dato ancora allocato.
