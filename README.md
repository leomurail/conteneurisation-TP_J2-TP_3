# TP 3 : Orchestration avec Kubernetes

## Prérequis

- Docker
- Make
- Kubernetes

## Architecture du projet

```bash
.
├── Deployment.yaml : deployment pour les microservices
├── Makefile : makefile pour automatiser les tâches
├── README.md : ce fichier
├── Service.yaml : service pour les microservices
└── instructions.pdf : instructions du TP
```

## Utilisation

### 1. Démarrer Minikube
```bash
make start
```

### 2. Builder les images
Prépare les images dans l'environnement Docker de Minikube.
```bash
make build
```

### 3. Déployer
```bash
make deploy
```

### 4. Statut
```bash
make status
```

### 5. Accéder à l'API (Tunnel)
Indispensable sur macOS/Docker pour obtenir l'URL d'accès. Garder le terminal ouvert.
```bash
make get-url
```

### 6. Tester
Dans un second terminal :
```bash
curl <URL_DE_MAKE_GET_URL>/orders
```

### 7. Nettoyer
```bash
make clean
```
