# Task 1 — Orientati nel sistema

Mario dice che "tutto è a posto", ma è meglio verificare di persona.

## Cosa fare

**1. Scopri chi sei e dove sei:**
```
whoami
pwd
```

**2. Esplora la home di mario. Cosa c'è dentro?**

**3. Leggi la nota che ha lasciato:**
```
cat /home/mario/ISTRUZIONI.txt
```

**4. Mario dice che c'è qualcosa di interessante in `/tmp/`. Trovalo:**
```
ls -la /tmp/
```

**5. Guarda la struttura generale del filesystem:**
```
ls /
```

## Domanda

Prima di andare al task 2, rispondi a queste domande guardando l'output dei comandi:

- Quanti file ci sono nella home di mario? (usa `ls -la`)
- Qual è il file più recente in `/tmp/`?
- In quale directory ti trovi adesso?

---

> 💡 **Ricorda:** `ls -la` mostra anche i file nascosti (quelli che iniziano con `.`) e i dettagli di permessi e proprietario.
