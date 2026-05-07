# Task 5 — Emergenza: il disco dell'applicazione è pieno 🚨

Mario ti manda un messaggio:

> *"Ehi, ho dimenticato di dirti — lv_app si riempirà presto. Ho già preparato un terzo disco in `/tmp/disco3.img` (300MB). Aggiungilo al sistema e espandi lv_app di 150MB. Grazie, sei un mito."*

Messaggio inviato alle 23:47. Da Lisbona.

---

## Il vantaggio di LVM: puoi farlo senza smontare nulla.

## 1. Collega il terzo disco come loop device

Il file `/tmp/disco3.img` esiste già. Devi collegarlo al sistema come loop device. Usa `/dev/loop12`.

> 💡 Il comando `losetup` con il percorso del file immagine collega il file a un device.

## 2. Inizializzalo come Physical Volume

Esattamente come hai fatto nel Task 1, inizializza il nuovo device per LVM.

## 3. Aggiungilo al Volume Group esistente

Aggiungi `/dev/loop12` al VG `vg_mario`. Esiste un comando apposito per estendere un VG con un nuovo PV.

Verifica che il VG abbia ora più spazio libero rispetto a prima.

## 4. Estendi lv_app di 150MB

Estendi il Logical Volume `lv_app` aggiungendo **150MB**. Usa l'opzione che ridimensiona anche il filesystem automaticamente, così non devi fare due passaggi separati.

> 💡 Esiste un'opzione di `lvextend` che fa resize del filesystem in automatico. Controllala.

## 5. Verifica che tutto funzioni

- Controlla la nuova dimensione di `lv_app` con `df -h`
- Verifica che il file `versione.txt` scritto nel Task 4 sia ancora lì intatto

---

**Risultato atteso:** `lv_app` cresce da 200MB a ~350MB, i file esistenti sono intatti, il volume rimane montato per tutta l'operazione.
