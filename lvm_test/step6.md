# Task 6 — Rendi tutto permanente

I volumi sono montati, ma solo per questa sessione. Al prossimo avvio sparirebbero. Bisogna aggiungerli a `/etc/fstab`.

Con LVM puoi usare direttamente il path del device — `/dev/vg_mario/lv_app` — invece dell'UUID. I nomi LVM sono stabili tra un riavvio e l'altro, a differenza di `/dev/sdb1` che può cambiare.

Smonta entrambi i volumi, aggiungi le due righe a fstab, poi testa con `mount -a`. Se non dà errori sei a posto. Verifica infine con `df -h` che i volumi siano tornati montati e che i file ci siano ancora.

---

Se vuoi ripulire tutto alla fine, l'ordine corretto è: smonta i filesystem, rimuovi i LV, rimuovi il VG, rimuovi i PV, sgancia i loop device, elimina i file in `/tmp/`. Sempre dall'alto verso il basso — mai al contrario.
