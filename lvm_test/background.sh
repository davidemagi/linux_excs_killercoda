#!/bin/bash
# background.sh — LVM scenario
# Eseguito in background all'avvio. Gli studenti non lo vedono.

sleep 5

# ── Installa lvm2 silenziosamente ────────────────────────────────────────────
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq && apt-get install -y -qq lvm2

# ── Utente mario ─────────────────────────────────────────────────────────────
useradd -m -s /bin/bash mario 2>/dev/null || true
echo "mario:password123" | chpasswd

# ── Promemoria lasciato da mario ──────────────────────────────────────────────
cat > /home/mario/PROMEMORIA_LVM.txt << 'EOFILE'
Ciao!

Allora, LVM in breve:

  PV (Physical Volume)  → il disco fisico "consegnato" a LVM
  VG (Volume Group)     → il pool che unisce uno o più PV
  LV (Logical Volume)   → la partizione virtuale che ricavi dal pool

I due dischi virtuali sono già pronti come loop device:
  /dev/loop10  →  disco1 (200MB)
  /dev/loop11  →  disco2 (200MB)

Quello che devi fare:
  1. Inizializza entrambi come PV
  2. Crea un VG chiamato "vg_mario" con entrambi
  3. Crea due LV: "lv_app" (200MB) e "lv_log" (100MB)
  4. Formattali ext4 e montali su /mnt/app e /mnt/log
  5. Scrivi qualcosa nei volumi per verificare che funzionino
  6. (Poi ti spiego del problema con lo spazio — c'è una sorpresa)

Grazie!
— Mario
EOFILE
chown mario:mario /home/mario/PROMEMORIA_LVM.txt

# ── Crea i due file immagine (dischi virtuali) ────────────────────────────────
dd if=/dev/zero of=/tmp/disco1.img bs=1M count=200 status=none
dd if=/dev/zero of=/tmp/disco2.img bs=1M count=200 status=none

# Collega come loop device fissi
losetup /dev/loop10 /tmp/disco1.img 2>/dev/null || true
losetup /dev/loop11 /tmp/disco2.img 2>/dev/null || true

# ── Terzo disco per il task 5 (emergenza spazio) ──────────────────────────────
dd if=/dev/zero of=/tmp/disco3.img bs=1M count=300 status=none

# ── Directory di mount ────────────────────────────────────────────────────────
mkdir -p /mnt/app /mnt/log /mnt/espansione

# ── File di log di mario (da usare nel task 4) ────────────────────────────────
mkdir -p /home/mario/logs
cat > /home/mario/logs/applicazione.log << 'EOFILE'
[2024-03-01 09:00:01] INFO  Applicazione avviata
[2024-03-01 09:01:15] INFO  Connessione DB stabilita
[2024-03-01 09:02:30] ERROR Timeout su richiesta esterna
[2024-03-01 09:03:00] INFO  Riconnessione riuscita
[2024-03-01 09:04:45] WARN  Utilizzo memoria al 78%
[2024-03-01 09:05:00] INFO  Pulizia cache completata
[2024-03-01 09:06:12] ERROR Scrittura su disco fallita: no space left
[2024-03-01 09:06:13] ERROR Scrittura su disco fallita: no space left
[2024-03-01 09:06:14] ERROR Scrittura su disco fallita: no space left
[2024-03-01 09:07:00] INFO  Sistema in stato di emergenza
EOFILE
chown -R mario:mario /home/mario/logs

# ── Segnale setup completato ──────────────────────────────────────────────────
touch /tmp/.lvm_setup_done
