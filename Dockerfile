# Empezamos con la imagen oficial de n8n como base
FROM n8nio/n8n

# Nos convertimos en el super-usuario 'root' para poder instalar cosas
USER root

# 1. Instalamos las herramientas del sistema operativo, incluyendo git y nmap
RUN apk add --no-cache nmap git

# 2. Establecemos el directorio de trabajo oficial de n8n
WORKDIR /home/node/.n8n

# 3. Instalamos los nodos descargando directamente los ZIP públicos y usando npm para instalarlos
RUN npm install https://github.com/n8n-io/n8n-nodes-shodan/archive/refs/heads/main.zip && \
    npm install https://github.com/n8n-io/n8n-nodes-zoomeye/archive/refs/heads/main.zip


