# Task 4 — Controlla il sistema

Mario vuole un resoconto dello stato del server. Tocca a te raccogliere le informazioni.

## Cosa si aspetta Mario

### Parte A — Risorse

- Controlla quanta RAM è libera e quanta è in uso
- Controlla lo spazio disponibile su tutti i filesystem montati
- Guarda i processi in esecuzione — nota quanti ce ne sono e chi li ha avviati

### Parte B — Rete

- Scopri qual è l'indirizzo IP del server
- Guarda quali porte sono attualmente in ascolto
- Verifica che il server riesca a raggiungere l'esterno (scegli tu un host da pingare)

### Parte C — Scarica un file e cercaci dentro

- Scarica il file all'indirizzo `https://releases.ubuntu.com/22.04/SHA256SUMS` e salvalo in `/tmp/checksums.txt`
- Conta quante righe ha
- Cerca solo le righe che contengono la parola "server"

## Risultato atteso

Alla fine dovresti saper rispondere a:

- Quanta RAM libera ha il server?
- Qual è la partizione con meno spazio libero?
- Quante versioni "server" ci sono nel file scaricato?

---

> 💡 **Suggerimento:** per scaricare un file da riga di comando hai due strumenti a disposizione: `wget` e `curl`. Entrambi funzionano, ma hanno sintassi diverse per salvare il file con un nome specifico.
