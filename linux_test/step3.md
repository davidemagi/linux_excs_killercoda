# Task 3 — Analizza i log

In `/tmp/mario_log.txt` c'è il log del server. Mario vuole sapere quanti errori ci sono e tenerli in un file separato per analizzarli dopo.

## Cosa si aspetta Mario

- Leggi il file di log per capire com'è strutturato
- Conta il numero totale di righe del file
- Estrai solo le righe che contengono errori
- Conta quanti errori ci sono
- Salva gli errori in un file separato: `/tmp/mario_errori.txt`
- Aggiungi in fondo al file degli errori una riga con la data e l'ora in cui hai fatto l'analisi

## Risultato atteso

Il file `/tmp/mario_errori.txt` deve contenere solo le righe di errore, con in fondo una riga tipo:

```
--- Analisi eseguita il: Thu Jan 15 08:30:00 UTC 2024 ---
```

## Sfida opzionale

- Quanti messaggi INFO ci sono nel log?
- Riesci a trovare solo gli errori che riguardano il "Backup"?

---

> 💡 **Suggerimento:** per questo task ti servono `grep`, `wc`, il pipe `|` e il reindirizzamento `>` e `>>`. La data corrente la puoi ottenere con il comando `date`.
