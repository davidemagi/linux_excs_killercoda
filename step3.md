# Task 3 — Analizza i log

Mario ha un file di log in `/tmp/mario_log.txt`. Ci sono degli errori mescolati ai messaggi normali. Il tuo compito è isolarli e capire quanti sono.

## Cosa fare

**1. Prima di tutto, dai un'occhiata al file intero:**
```
cat /tmp/mario_log.txt
```

**2. Quante righe ha in totale?**
```
wc -l /tmp/mario_log.txt
```

**3. Trova solo le righe con ERROR:**
```
grep "ERROR" /tmp/mario_log.txt
```

**4. Quanti errori ci sono?**
```
grep "ERROR" /tmp/mario_log.txt | wc -l
```

**5. Salva solo gli errori in un file separato:**
```
grep "ERROR" /tmp/mario_log.txt > /tmp/mario_errori.txt
```

**6. Verifica che il file sia stato creato correttamente:**
```
cat /tmp/mario_errori.txt
```

**7. Aggiungi una riga finale con la data di analisi:**
```
echo "--- Analisi eseguita il: $(date) ---" >> /tmp/mario_errori.txt
```

**8. Guarda il risultato finale:**
```
cat /tmp/mario_errori.txt
```

---

## Sfida opzionale

Riesci a trovare solo gli errori che contengono la parola "Backup"?
```
grep "ERROR" /tmp/mario_log.txt | grep "Backup"
```

E quanti messaggi INFO ci sono?
```
grep "INFO" /tmp/mario_log.txt | wc -l
```

---

> 💡 **Il pipe `|`** è uno degli strumenti più potenti di Linux: prende l'output di un comando e lo passa come input al successivo. Si possono concatenare quanti comandi si vuole.
