# Task 5 — Lo spazio sta finendo

Mario ti manda un messaggio alle 23:47:

> *"Ehi, lv_app si riempirà presto. Ho già messo un terzo disco in /tmp/disco3.img, fa 300MB. Aggiungilo e espandi lv_app di 150MB. Grazie sei un mito"*

Niente punto. Niente maiuscola iniziale. Scritto dal telefono.

---

La buona notizia è che con LVM puoi farlo senza smontare nulla.

Collega `/tmp/disco3.img` come loop device su `/dev/loop12`, inizializzalo come PV e aggiungilo al VG `vg_mario` con `vgextend`.

Poi estendi `lv_app` di 150MB. Usa l'opzione di `lvextend` che ridimensiona anche il filesystem in automatico, così fai tutto in un comando solo.

Alla fine verifica con `df -h` che `lv_app` sia cresciuto e che `versione.txt` sia ancora lì intatto.
