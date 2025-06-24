# Empezamos con la imagen oficial de n8n como base
FROM n8nio/n8n

# Nos convertimos en el super-usuario 'root' para poder instalar cosas
USER root

# 1. Instalamos las herramientas del sistema operativo, incluyendo git
RUN apk add --no-cache nmap git

# 2. INSTRUCCIÓN CLAVE: Forzamos a git a usar HTTPS en lugar de SSH para GitHub
RUN git config --global url."https://github.com/".insteadOf git@github.com:

# 3. Ahora sí, instalamos los nodos desde GitHub usando el protocolo público
RUN cd /home/node/.n8n && \
    npm install git+https://github.com/n8n-io/n8n-nodes-shodan.git && \
    npm install git+https://github.com/n8n-io/n8n-nodes-zoomeye.git

