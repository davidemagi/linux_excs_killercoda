# Task 2 — Prepara l'ambiente di lavoro

Mario ha lasciato uno script da eseguire, ma i permessi sono sbagliati. Toccherà sistemarli.
Poi bisogna creare le directory di lavoro che ha indicato nella nota.

## Parte A — Sistemare lo script

**1. Guarda lo script e i suoi permessi attuali:**
```
ls -l /home/mario/script/avvia.sh
```

Noterai che il proprietario è `mario` e che i permessi non permettono l'esecuzione.

**2. Leggi il contenuto dello script:**
```
cat /home/mario/script/avvia.sh
```

**3. Aggiungi il permesso di esecuzione per tutti:**
```
chmod a+x /home/mario/script/avvia.sh
```

**4. Verifica che i permessi siano cambiati:**
```
ls -l /home/mario/script/avvia.sh
```

**5. Esegui lo script:**
```
bash /home/mario/script/avvia.sh
```

---

## Parte B — Creare le directory di lavoro

Leggi prima la nota di Mario:
```
cat /home/mario/NOTA_DIRECTORY.txt
```

**6. Crea le tre directory in `/opt/lavoro/`:**
```
sudo mkdir -p /opt/lavoro/logs
sudo mkdir -p /opt/lavoro/backup
sudo mkdir -p /opt/lavoro/temp
```

**7. Imposta i permessi corretti (755 = leggibile da tutti):**
```
sudo chmod 755 /opt/lavoro/logs /opt/lavoro/backup /opt/lavoro/temp
```

**8. Verifica il risultato:**
```
ls -la /opt/lavoro/
```

---

> 💡 **Ricorda la notazione ottale:** `755` = `rwxr-xr-x`. Il proprietario può fare tutto, gli altri possono solo leggere ed eseguire.
