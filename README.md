# simple-mongo-deploy

Deploys `artium777/simple-mongo-app:latest` to an EC2 host via Docker Compose.

## Files
- `docker-compose.prod.yml` – app + mongo with healthchecks
- `.github/workflows/deploy.yml` – copies compose to EC2 and runs `pull` + `up -d`

## Required GitHub Secrets (Repo → Settings → Secrets and variables → Actions)
- `EC2_HOST` – EC2 public IP/DNS
- `EC2_USER` – SSH user (e.g. `ubuntu`)
- `EC2_SSH_KEY` – **private key content** (PEM text)

(Optional for private images)
- `DOCKERHUB_USERNAME` – e.g. `artium777`
- `DOCKERHUB_TOKEN` – Docker Hub access token

## Manual check on server

