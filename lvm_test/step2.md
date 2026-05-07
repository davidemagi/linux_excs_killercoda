# Task 2 — Volume Group

Hai due PV separati. Adesso uniscili in un unico pool di spazio chiamato `vg_mario`.

Dopo averlo creato, guarda l'output di `vgs`. La dimensione totale non sarà esattamente 400MB — LVM tiene un po' di spazio per i metadati. È normale.

Usa anche `vgdisplay vg_mario` e cerca i campi `VG Size`, `Free PE / Size` e `PE Size`. Capire cosa sono i Physical Extent adesso ti risparmia confusione nei prossimi passi.
