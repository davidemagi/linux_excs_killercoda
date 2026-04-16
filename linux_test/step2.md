# Task 2 — Prepara l'ambiente di lavoro

Mario ha lasciato uno script in `/home/mario/script/avvia.sh`, ma i permessi sono sbagliati e non si riesce ad eseguire. Ha anche lasciato una nota su alcune directory da creare.

## Cosa si aspetta Mario

### Parte A — Lo script

- Guarda i permessi attuali dello script
- Leggine il contenuto per capire cosa fa
- Aggiungi il permesso di esecuzione per tutti gli utenti
- Eseguilo e verifica che funzioni

### Parte B — Le directory

- Leggi la nota `/home/mario/NOTA_DIRECTORY.txt`
- Crea le directory indicate in `/opt/lavoro/`
- Imposta i permessi corretti su ognuna (leggibili da tutti)
- Verifica il risultato

## Risultato atteso

```
/opt/lavoro/
├── backup/
├── logs/
└── temp/
```

Ogni directory deve avere permessi `755`.

---

> 💡 **Suggerimento:** ricorda la differenza tra modo simbolico (`+x`) e modo ottale (`755`) di `chmod`. Per creare directory annidate in un solo comando, c'è un'opzione di `mkdir` che fa al caso tuo.
