# Task 4 — Formatta, monta e usa i volumi

I Logical Volume esistono ma sono ancora vuoti — come partizioni non formattate. Bisogna creare un filesystem e montarli.

## 1. Formatta i due LV

Formatta entrambi i Logical Volume con il filesystem **ext4**.

> ⚠️ Questo è distruttivo — ma i LV sono appena stati creati e sono vuoti, quindi nessun problema.

## 2. Monta i volumi

Le directory di mount sono già pronte sul sistema (`/mnt/app` e `/mnt/log`). Monta i due LV sulle rispettive directory.

## 3. Verifica che siano montati

Usa `df -h` per confermare che i volumi siano montati e mostrino lo spazio disponibile corretto.

## 4. Scrivi qualcosa dentro

Mario vuole che i volumi siano operativi. Fai queste operazioni:

- In `/mnt/app`: crea un file `versione.txt` con scritto dentro `app v1.0`
- In `/mnt/log`: copia il file `/home/mario/logs/applicazione.log`

## 5. Cerca gli errori nel log

Ora che il log è sul volume dedicato, filtra le righe che contengono `ERROR` e salvale in un file `errori.log` nella stessa directory `/mnt/log/`.

---

**Risultato atteso:** due volumi montati, con file scritti e verificabili.
