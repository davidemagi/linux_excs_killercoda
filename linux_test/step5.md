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

Usa `fdisk` sul loop device che hai ottenuto al passo precedente per creare una partizione primaria che occupi tutto lo spazio disponibile.

> 💡 Ricorda: dentro `fdisk` devi creare la partizione e poi scrivere le modifiche. Finché non scrivi, nessuna modifica è permanente.

Dopo aver partizionato, verifica con `lsblk` che la partizione sia comparsa.

---

## 3. Formatta

Formatta la partizione appena creata con il filesystem **ext4** e assegnale l'etichetta `backup-mario`.

> 💡 Il comando per formattare è `mkfs` — esistono varianti per ogni tipo di filesystem. Controlla anche come si aggiunge un'etichetta.

---

## 4. Rendi permanente

Mario vuole che il disco si monti automaticamente ad ogni avvio su `/mnt/backup_mario`.

- Crea il punto di mount
- Trova l'**UUID** della partizione appena formattata
- Aggiungi la riga corretta a `/etc/fstab`
- Usa `mount -a` per montare tutto quello che c'è in fstab senza riavviare
- Verifica con `df -h` che il disco sia montato correttamente

> 💡 Per trovare l'UUID di una partizione puoi usare `blkid`. Il formato di una riga fstab è: `UUID=... punto_di_mount filesystem opzioni 0 2`

> ⚠️ Un fstab sbagliato può impedire il boot del sistema. Prima di salvare, rileggi la riga che hai scritto.

---

## 5. Scrivi sul disco

Ora che il disco è montato, mettici qualcosa dentro:

- Crea un file `info.txt` con dentro la data e ora corrente e il tuo nome utente
- Crea una directory `log/` e copia dentro il file `/tmp/mario_errori.txt` (dal task 3)
- Crea un secondo file `note.txt` e scrivici dentro almeno tre righe di testo libero usando `echo` e `>>`

---

## 6. Verifica finale

Controlla che tutto sia a posto:

- Elenca il contenuto del disco montato con i dettagli
- Verifica quanto spazio hai usato e quanto ne rimane
- Leggi il contenuto di `info.txt` e `note.txt` per confermare che siano stati scritti correttamente

---

> 🎉 Se sei arrivato fin qui hai completato il ciclo completo di gestione di un disco in Linux: creazione → partizionamento → formattazione → mount permanente → utilizzo.
