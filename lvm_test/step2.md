# Task 2 — Crea il Volume Group

Hai due PV inizializzati ma ancora separati. È il momento di unirli in un unico pool di spazio.

## 1. Crea il Volume Group

Crea un Volume Group chiamato `vg_mario` che includa entrambi i Physical Volume (`/dev/loop10` e `/dev/loop11`).

## 2. Verifica il risultato

Controlla che il VG sia stato creato correttamente. Rispondi a queste domande guardando l'output:

- Quanti PV contiene il gruppo?
- Qual è la dimensione totale del pool?
- Quanto spazio è libero?

> 💡 La dimensione totale non sarà esattamente 400MB — LVM riserva una piccola parte per i propri metadati. È normale.

## 3. Esplora i dettagli

Usa la versione dettagliata del comando per visualizzare il VG. Individua i campi `VG Size`, `Free PE / Size` e `PE Size`.

> 💡 **PE** sta per Physical Extent — è l'unità minima con cui LVM alloca lo spazio. Di default è 4MB. Tutte le dimensioni LVM sono multipli di questo valore.

---

**Risultato atteso:** un VG `vg_mario` con ~392MB di spazio libero, composto da 2 PV.
