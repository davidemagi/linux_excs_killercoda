# Task 4 — Controlla il sistema

Mario vuole sapere che il server sia "vivo e in salute" prima di staccare del tutto. Tocca a te fare un controllo generale: memoria, processi, rete.

## Parte A — Risorse del sistema

**1. Quanta RAM è disponibile?**
```
free -h
```

**2. Quanto spazio c'è sui dischi?**
```
df -h
```

**3. Guarda i processi in esecuzione — c'è qualcosa di strano?**
```
ps aux | head -20
```

**4. Trova solo i processi di sistema (quelli di root):**
```
ps aux | grep root | head -10
```

---

## Parte B — Rete

**5. Qual è il tuo indirizzo IP?**
```
ip addr show
```

**6. Quali porte sono in ascolto?**
```
ss -tuln
```

**7. Il server riesce a raggiungere l'esterno?**
```
ping -c 3 google.com
```

---

## Parte C — Scarica e analizza un file

Mario ha lasciato un file di checksum su internet. Scaricalo e controlla il contenuto.

**8. Scarica il file (usiamo uno reale di Ubuntu):**
```
curl -o /tmp/checksums.txt https://releases.ubuntu.com/22.04/SHA256SUMS
```

**9. Quante righe ha?**
```
wc -l /tmp/checksums.txt
```

**10. Cerca solo le versioni "server":**
```
grep "server" /tmp/checksums.txt
```

---

> 💡 **`ss -tuln`** — ogni lettera conta: `t` = TCP, `u` = UDP, `l` = solo porte in ascolto (listening), `n` = mostra i numeri invece dei nomi dei servizi.
