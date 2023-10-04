#!/bin/bash

# Clonar repositório n8n e configuração
git clone https://github.com/n8n-io/n8n-docker-caddy.git
cd n8n-docker-caddy
docker volume create caddy_data
sudo docker volume create n8n_data

# Editar arquivos de configuração
nano .env
nano docker-compose.yml
nano caddy_config/Caddyfile

# Configuração de pasta
export DATA_FOLDER=/root/n8n-docker-caddy
mkdir -p /root/n8n-docker-caddy/.n8n
chown -R 1000:1000 /root/n8n-docker-caddy/.n8n

# Iniciar o Docker
docker compose up -d
