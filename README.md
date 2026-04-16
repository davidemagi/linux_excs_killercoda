# Linux — Il Server di Mario
### Scenario KillerCoda

---

## Struttura del repository

```
.
├── index.json        # configurazione scenario (titolo, passi, immagine)
├── background.sh     # setup automatico — eseguito all'avvio (invisibile allo studente)
├── intro.md          # schermata introduttiva
├── finish.md         # schermata finale
├── step1.md          # Task 1: orientamento nel sistema
├── step2.md          # Task 2: permessi e directory
├── step3.md          # Task 3: analisi log con grep e pipe
├── step4.md          # Task 4: processi, rete, curl
└── step5.md          # Task 5: disco virtuale completo
```

---

## Come pubblicarlo su KillerCoda

### 1. Crea il repository GitHub
- Vai su github.com → New repository
- Nome: `linux-il-server-di-mario` (o quello che preferisci)
- Visibilità: **Public** (obbligatorio per KillerCoda gratuito)
- Carica tutti i file di questa cartella

### 2. Crea l'account KillerCoda
- Vai su killercoda.com
- Registrati (puoi usare GitHub per il login)

### 3. Collega il repository
- Dashboard KillerCoda → **Creator** → **New Scenario**
- Inserisci l'URL del tuo repo GitHub
- KillerCoda si sincronizza automaticamente

### 4. Condividi con gli studenti
- Il link dello scenario sarà: `https://killercoda.com/TUO-USERNAME/scenario/linux-il-server-di-mario`
- Ad ogni click viene creato un container Ubuntu isolato e temporaneo

---

## Cosa prepara background.sh

Lo script gira in background all'avvio di ogni sessione e crea:

| Cosa | Dove |
|------|------|
| Utente `mario` con home | `/home/mario/` |
| File istruzioni | `/home/mario/ISTRUZIONI.txt` |
| Script con permessi sbagliati | `/home/mario/script/avvia.sh` |
| Nota sulle directory | `/home/mario/NOTA_DIRECTORY.txt` |
| File di log con errori | `/tmp/mario_log.txt` |
| Punto di mount pronto | `/mnt/backup_mario/` |

---

## Note tecniche

- **Immagine base:** Ubuntu 22.04 (specificata in `index.json` → `backend.imageid: "ubuntu"`)
- **Durata sessione:** 1 ora (default KillerCoda)
- **Sudo:** disponibile senza password nel container KillerCoda
- **Connessione internet:** disponibile nel container (serve per il `curl` del task 4)
