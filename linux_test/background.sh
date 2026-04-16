#!/bin/bash
# background.sh — eseguito in background all'avvio del container
# Gli studenti non lo vedono. Prepara tutto l'ambiente dell'esercizio.

# ─── Attendi che il sistema sia pronto ───────────────────────────────────────
sleep 5

# ─── Crea l'utente mario (il collega assente) ────────────────────────────────
useradd -m -s /bin/bash mario 2>/dev/null || true
echo "mario:password123" | chpasswd

# ─── Struttura directory di mario ────────────────────────────────────────────
mkdir -p /home/mario/progetti/webapp
mkdir -p /home/mario/progetti/database
mkdir -p /home/mario/backup
chown -R mario:mario /home/mario

# ─── File con le istruzioni lasciate da mario ────────────────────────────────
cat > /home/mario/ISTRUZIONI.txt << 'EOF'
Ciao!

Sono partito per ferie, grazie per tenere d'occhio il server.
Ecco cosa c'è da fare:

1. Dai un'occhiata al sistema — controlla che tutto sia a posto
2. Nella cartella /home/mario/script/ c'è uno script da sistemare (i permessi sono sbagliati)
3. Crea le directory di lavoro in /opt/lavoro/ come indicato nella nota
4. Controlla i log in /tmp/mario_log.txt — ci sono degli errori da isolare
5. Verifica che il sistema abbia risorse sufficienti
6. Crea un disco di backup virtuale in /tmp/

Grazie!
— Mario
EOF
chown mario:mario /home/mario/ISTRUZIONI.txt

# ─── Script con permessi volutamente sbagliati ───────────────────────────────
mkdir -p /home/mario/script
cat > /home/mario/script/avvia.sh << 'EOF'
#!/bin/bash
echo "=== Sistema avviato ==="
echo "Data: $(date)"
echo "Utente: $(whoami)"
echo "Directory: $(pwd)"
EOF
# Permessi volutamente sbagliati: nessun execute, nessun accesso per gli altri
chmod 600 /home/mario/script/avvia.sh
chown mario:mario /home/mario/script/avvia.sh

# ─── Nota con le directory da creare ─────────────────────────────────────────
cat > /home/mario/NOTA_DIRECTORY.txt << 'EOF'
Directory da creare in /opt/lavoro/:
  - logs/
  - backup/
  - temp/

Queste directory devono essere leggibili da tutti (permesso 755).
EOF
chown mario:mario /home/mario/NOTA_DIRECTORY.txt

# ─── File di log con errori mescolati ────────────────────────────────────────
cat > /tmp/mario_log.txt << 'EOF'
[2024-01-15 08:00:01] INFO  Server avviato correttamente
[2024-01-15 08:00:05] INFO  Connessione al database stabilita
[2024-01-15 08:01:12] INFO  Richiesta ricevuta da 192.168.1.10
[2024-01-15 08:01:15] ERROR Timeout connessione al servizio esterno
[2024-01-15 08:01:16] INFO  Tentativo di riconnessione in corso
[2024-01-15 08:02:00] INFO  Richiesta ricevuta da 192.168.1.11
[2024-01-15 08:02:45] ERROR Spazio su disco insufficiente in /var/tmp
[2024-01-15 08:03:01] INFO  Pulizia file temporanei avviata
[2024-01-15 08:03:15] INFO  Pulizia completata: liberati 512MB
[2024-01-15 08:04:00] INFO  Backup giornaliero avviato
[2024-01-15 08:04:30] ERROR Backup fallito: directory destinazione non trovata
[2024-01-15 08:04:31] INFO  Notifica email inviata all'amministratore
[2024-01-15 08:05:00] INFO  Richiesta ricevuta da 192.168.1.10
[2024-01-15 08:05:10] INFO  Richiesta elaborata con successo
[2024-01-15 08:06:00] INFO  Controllo periodico del sistema completato
[2024-01-15 08:07:22] ERROR Certificato SSL in scadenza tra 3 giorni
[2024-01-15 08:08:00] INFO  Richiesta ricevuta da 192.168.1.12
[2024-01-15 08:09:00] INFO  Sistema stabile — nessun problema rilevato
[2024-01-15 08:10:00] INFO  Salvataggio configurazione completato
EOF

# ─── File da scaricare per il task 4 (simuliamo con un file locale) ──────────
cat > /tmp/checksums.txt << 'EOF'
a1b2c3d4e5f6  ubuntu-22.04-desktop-amd64.iso
b2c3d4e5f6a1  ubuntu-22.04-server-amd64.iso
c3d4e5f6a1b2  ubuntu-22.04-live-server-amd64.iso
EOF

# ─── Punto di mount pronto ───────────────────────────────────────────────────
mkdir -p /mnt/backup_mario

# ─── Segnale: setup completato ───────────────────────────────────────────────
touch /tmp/.setup_done
echo "Setup completato" >> /tmp/setup_log.txt
