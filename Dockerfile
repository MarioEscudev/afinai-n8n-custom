# Partimos de la imagen oficial de n8n
FROM n8nio/n8n

# Pasamos a root para poder instalar paquetes
USER root

# Instalamos Nmap y WhatWeb. NADA MÁS.
RUN apk add --no-cache nmap whatweb


