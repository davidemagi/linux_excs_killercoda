# Il Server di Mario — Episodio 2 🖥️💥

Ti ricordi Mario?

Sì, quello che l'ultima volta è andato in vacanza lasciandoti il server da gestire. Quello stesso.

Beh, è tornato. Per tre settimane. E poi è ripartito — stavolta per "un corso di formazione" a Lisbona, durata indefinita.

Prima di sparire ti ha lasciato un messaggio vocale di 40 secondi, di cui hai capito solo la parte finale:

> *"...comunque i due dischi nuovi sono già montati nel server, devi solo configurarli con LVM. Ho già creato i file immagine, sono in `/tmp/`. Oh, quasi dimenticavo — il disco dell'applicazione si sta riempiendo. Gestisci tu. Ciao!"*

Silenzio. Tono di chiamata conclusa.

## Il tuo obiettivo

Configurare da zero una struttura LVM sul server: inizializzare i dischi, creare il pool, ricavare i volumi logici, montarli, e poi gestire un'emergenza di spazio.

## Prima di iniziare

Mario ha lasciato un promemoria sul server:

```
cat /home/mario/PROMEMORIA_LVM.txt
```

Buona fortuna. Mario "torna presto".
