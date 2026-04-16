# Task 5 — Disco di backup

Ultimo task. Mario vuole un disco virtuale di backup montato e pronto all'uso. Ti ha lasciato solo le specifiche — il come tocca a te ricordarlo.

## Specifiche di Mario

- Il disco virtuale deve essere un file da **100MB** salvato in `/tmp/backup_mario.img`
  Puoi usare il comando `sudo dd if=/dev/zero of=/tmp/backup_mario.img bs=1M count=100` per crearlo
- Deve essere formattato con filesystem **ext4**
- Deve essere montato su `/mnt/backup_mario`
- Una volta montato, copia dentro il file `/tmp/mario_errori.txt` che hai creato al task 3
- Crea anche un file `info.txt` con dentro la data e ora corrente
- Verifica quanto spazio hai usato sul disco virtuale
- Smonta il disco

## Il ciclo che devi seguire

```
Crea il file immagine  →  Formatta  →  Monta  →  Scrivi  →  Smonta
```

## Risultato atteso

Dopo lo smontaggio, `/mnt/backup_mario` deve essere vuoto — i file esistono solo dentro l'immagine `.img`.

## Sfida finale

Rimonta il disco e verifica che i file siano ancora lì. Poi smontalo di nuovo.

---

> 💡 **Suggerimento:** per creare un file di dimensione precisa puoi usare `dd`. Per montare un file come se fosse un disco fisico, `mount` ha un'opzione specifica per questo caso. Se non ricordi quale, prova `man mount` e cerca "loop".
