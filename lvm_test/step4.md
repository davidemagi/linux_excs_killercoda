# Task 4 — Formatta, monta, usa

I Logical Volume esistono ma sono vuoti — come un disco appena comprato. Bisogna creare un filesystem e montarli.

Formatta entrambi con ext4, poi montali: `lv_app` su `/mnt/app` e `lv_log` su `/mnt/log`. Le directory ci sono già.

Verifica con `df -h` che siano effettivamente montati e che lo spazio tornino.

---

Ora mettici qualcosa dentro. In `/mnt/app` crea un file `versione.txt` con scritto `app v1.0`. In `/mnt/log` copia il file `/home/mario/logs/applicazione.log`.

Poi filtra le righe con `ERROR` da quel log e salvale in `/mnt/log/errori.log`. Saranno utili dopo.
