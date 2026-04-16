# Task 5 — Disco di backup 💾

Ultimo task. Mario vuole un disco virtuale di backup, partizionato, formattato e montato in modo permanente.

---

## 1. Crea e rileva il disco virtuale

Crea un file da 200MB che farà da disco virtuale:

```
sudo dd if=/dev/zero of=/tmp/backup_mario.img bs=1M count=200
```

Ora verifica che il sistema lo veda correttamente come dispositivo a blocchi:

```
sudo losetup -fP --show /tmp/backup_mario.img
```

Questo comando associa il file a un **loop device** (qualcosa tipo `/dev/loop0`) e ti mostra quale nome ha ricevuto. Annotalo — ti servirà nei passi successivi.

---

## 2. Partiziona il disco

Usa `fdisk` o `parted` sul disco virtuale per creare una partizione primaria che occupi tutto lo spazio disponibile.

Dopo aver partizionato, verifica che la partizione sia comparsa.

---

## 3. Formatta

Formatta la partizione appena creata con il filesystem **ext4**.

---

## 4. Rendi permanente

Mario vuole che il disco si monti automaticamente ad ogni avvio su `/mnt/backup_mario`.

- Crea la directory di mount
- Trova l'**UUID** della partizione appena formattata
- Aggiungi la riga corretta a `/etc/fstab`
- Usa il comando apposito per montare tutto quello che c'è in fstab senza riavviare
- Verifica che il disco sia montato correttamente

---

## 5. Scrivi sul disco

Ora che il disco è montato, mettici qualcosa dentro:

- Crea un file `info.txt`
- Crea una directory `log/` e copia dentro il file `/tmp/mario_errori.txt` (dal task 3)

---

## 6. Verifica finale

Controlla che tutto sia a posto:

- Elenca il contenuto del disco montato con i dettagli
- Verifica quanto spazio hai usato e quanto ne rimane
- Leggi il contenuto di `info.txt` per confermare che sia stato scritto correttamente

---

## 7. Smonta, rimonta e controlla

Il vero test: i file devono sopravvivere allo smontaggio.

- Smonta il disco da `/mnt/backup_mario`
- Verifica che il punto di mount sia vuoto
- Rimonta il disco (puoi usare `mount -a` oppure `mount` direttamente)
- Verifica che i file scritti al passo 5 siano ancora lì

> 💡 Se i file ci sono ancora, significa che sono stati scritti correttamente sul disco virtuale e non solo in memoria.

---

> 🎉 Se sei arrivato fin qui hai completato il ciclo completo di gestione di un disco in Linux: creazione → partizionamento → formattazione → mount permanente → utilizzo.
