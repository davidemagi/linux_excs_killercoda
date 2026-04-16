# Task 5 — Disco di backup

Ultimo task. Mario vuole un "disco di backup virtuale" montato e pronto. Ti ha lasciato le istruzioni — bisogna solo eseguirle nell'ordine giusto.

Questo task riassume il ciclo completo di gestione di un disco in Linux: creare → formattare → montare → usare → smontare.

---

## Il ciclo completo

**1. Prima di tutto, vedi com'è la situazione dischi ora:**
```
lsblk
df -h
```

**2. Crea un file da 100MB che farà da "disco virtuale":**
```
sudo dd if=/dev/zero of=/tmp/backup_mario.img bs=1M count=100
```
> Questo comando crea un file riempito di zeri. `bs=1M` = blocchi da 1MB, `count=100` = 100 blocchi → 100MB totali.

**3. Formattalo come ext4:**
```
sudo mkfs.ext4 /tmp/backup_mario.img
```

**4. Crea il punto di mount:**
```
sudo mkdir -p /mnt/backup_mario
```

**5. Monta il file come se fosse un disco reale:**
```
sudo mount -o loop /tmp/backup_mario.img /mnt/backup_mario
```

**6. Verifica che sia montato:**
```
df -h /mnt/backup_mario
lsblk
```

**7. Scrivi qualcosa dentro — è il tuo primo file di backup:**
```
echo "Backup creato il: $(date)" | sudo tee /mnt/backup_mario/info.txt
sudo cp /tmp/mario_errori.txt /mnt/backup_mario/
ls -la /mnt/backup_mario/
```

**8. Controlla quanto spazio hai usato:**
```
du -sh /mnt/backup_mario/
```

**9. Smonta il disco:**
```
sudo umount /mnt/backup_mario
```

**10. Verifica che il mount point sia vuoto (i file sono nel "disco", non qui):**
```
ls /mnt/backup_mario/
```

---

## Sfida finale

Riesci a rimontare il disco e verificare che i file ci siano ancora?

```
sudo mount -o loop /tmp/backup_mario.img /mnt/backup_mario
ls -la /mnt/backup_mario/
cat /mnt/backup_mario/info.txt
sudo umount /mnt/backup_mario
```

---

> 💡 **`-o loop`** dice a Linux di trattare un file normale come se fosse un dispositivo a blocchi (un disco). È questo il trucco che permette di usare un file `.img` come se fosse una chiavetta o un disco fisico.
