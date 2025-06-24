# Empezamos con la imagen oficial de n8n como base
FROM n8nio/n8n

# Nos convertimos en el super-usuario 'root' para poder instalar cosas
USER root

# 1. Instalamos las herramientas del sistema operativo
RUN apk add --no-cache nmap git

# 2. INSTALAMOS LOS NODOS DE LA COMUNIDAD DIRECTAMENTE
# Este es el nuevo paso clave. Es más robusto que usar variables de entorno.
RUN cd /home/node/.n8n && npm install n8n-nodes-shodan n8n-nodes-zoomeye
