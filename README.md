# TP 3 : Orchestration avec Kubernetes

## Objectif
Déployer deux microservices (`service-user` et `service-order`) sur Kubernetes et exposer le service de commandes au réseau externe.

## Prérequis
- [Minikube](https://minikube.sigs.k8s.io/docs/start/) ou un cluster Kubernetes fonctionnel.
- [Docker](https://www.docker.com/) installé.
- Outil en ligne de commande `kubectl` installé et configuré.
- Outil `make` pour simplifier l'exécution des commandes.

## Structure du projet
- `Deployment.yaml` : Fichier de configuration définissant les `Deployments` pour les deux applications.
- `Service.yaml` : Fichier de configuration définissant un `Service` Kubernetes.
- `Makefile` : Fichier contenant des raccourcis pratiques pour exécuter les commandes.

## Utilisation (Commandes Make)

### 1. Déployer l'application
```bash
make deploy
```

### 2. Vérifier le statut
```bash
make status
```

### 3. Tester l'API

**Si vous utilisez Minikube**
```bash
make get-url
```

```bash
curl http://<EXTERNAL_IP>/orders
```

```bash
make test
```

### 4. Nettoyer le déploiement
```bash
make clean
```
# conteneurisation-TP_J2-TP_3
