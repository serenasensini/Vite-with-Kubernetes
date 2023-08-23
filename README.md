# Vite-with-Kubernetes

Esempio di applicazione Vite.js con Docker.

# Deploy su Docker

Clona il repository e poi esegui i seguenti comandi per avviare la build dell'immagine ed eseguire il container:

```
docker build -t vite-app .
docker run -d vite-app -p 5173:5173
```

# Deploy su Kubernetes

Clona il repository e poi esegui i seguenti comandi per installare il Chart:

```
helm install -f values.yaml vite-app ./
```
