# Task 6 — Rendi tutto permanente e fai pulizia

I volumi sono montati, ma solo per questa sessione. Al prossimo avvio sparirebbero. Bisogna registrarli in `/etc/fstab`.

## 1. Trova i path dei device LVM

Con LVM puoi usare direttamente il path del device (`/dev/vg_mario/lv_app`) invece dell'UUID — a differenza di `/dev/sdb1`, i nomi LVM non cambiano mai tra un riavvio e l'altro.

Verifica che i path esistano.

## 2. Smonta i volumi

Prima di modificare fstab, smonta entrambi i volumi.

## 3. Aggiungi le righe a /etc/fstab

Apri `/etc/fstab` e aggiungi le due righe per montare automaticamente:
- `lv_app` su `/mnt/app` con filesystem ext4 e opzioni `defaults`
- `lv_log` su `/mnt/log` con filesystem ext4 e opzioni `defaults`

## 4. Testa senza riavviare

Usa il comando che monta tutto quello che è in fstab in una volta sola, senza riavviare. Se non dà errori, la configurazione è corretta.

> ⚠️ Non riavviare mai senza aver testato fstab — una riga sbagliata può impedire il boot del sistema.

## 5. Verifica finale

Controlla con `df -h` che entrambi i volumi siano montati. Verifica che i file scritti nei task precedenti siano ancora lì.

---

## Pulizia (opzionale — solo se vuoi resettare tutto)

Se vuoi smontare e rimuovere tutta la struttura LVM nell'ordine corretto:

1. Smonta i filesystem
2. Rimuovi i Logical Volume (uno per volta)
3. Rimuovi il Volume Group
4. Rimuovi i Physical Volume (tutti e tre)
5. Sgancia i loop device
6. Elimina i file immagine in `/tmp/`

> 💡 L'ordine è l'inverso della creazione: prima quello che sta sopra, poi quello che sta sotto.

---

**Risultato atteso:** fstab aggiornato, `mount -a` senza errori, volumi montati e dati intatti.
