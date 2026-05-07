# Task 3 — Crea i Logical Volume

Il pool è pronto. Adesso Mario vuole due volumi logici separati: uno per l'applicazione, uno per i log.

## 1. Crea i due Logical Volume

Dal VG `vg_mario`, ricava:
- un LV chiamato `lv_app` da **200MB**
- un LV chiamato `lv_log` da **100MB**

## 2. Verifica il risultato

Controlla che entrambi i LV esistano con le dimensioni corrette.

## 3. Trova i device path

LVM crea automaticamente i device in due posti. Esplorane almeno uno:
- `/dev/vg_mario/`
- `/dev/mapper/`

> 💡 `lv_app` e `vg_mario-lv_app` sono la stessa cosa — uno è un symlink all'altro. Puoi usare indifferentemente l'uno o l'altro nei comandi successivi.

## 4. Verifica lo spazio rimasto nel VG

Dopo aver creato i due LV, controlla quanto spazio è rimasto libero nel VG `vg_mario`.

---

**Risultato atteso:** due LV creati, ~88MB ancora liberi nel VG.
