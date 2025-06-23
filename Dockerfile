# Empezamos con la imagen oficial de n8n como base
FROM n8nio/n8n

# Nos convertimos en el super-usuario 'root' para poder instalar cosas
USER root

# Actualizamos la lista de programas e instalamos Nmap y WhatWeb
RUN apt-get update && apt-get install -y nmap whatweb --no-install-recommends && rm -rf /var/lib/apt/lists/*
