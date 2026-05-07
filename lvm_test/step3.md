# Task 3 — Logical Volume

Il pool è pronto. Mario vuole due volumi separati: uno per l'applicazione, uno per i log.

Crea `lv_app` da 200MB e `lv_log` da 100MB, entrambi dentro `vg_mario`.

Verificali con `lvs`, poi vai a guardare cosa LVM ha creato in `/dev/vg_mario/` e in `/dev/mapper/`. Troverai lo stesso volume in due posti diversi — sono la stessa cosa, due path alternativi per lo stesso device.

Controlla infine quanto spazio è rimasto libero nel VG.
