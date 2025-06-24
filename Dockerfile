# Partimos de la imagen oficial de n8n
FROM n8nio/n8n

# Pasamos a root para poder instalar paquetes
USER root

# Instalamos SOLAMENTE Nmap y Git, que sabemos que funcionan.
RUN apk add --no-cache nmap git


