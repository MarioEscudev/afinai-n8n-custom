# Empezamos con la imagen oficial de n8n como base
FROM n8nio/n8n

# Nos convertimos en el super-usuario 'root' para poder instalar cosas
USER root

# ACTUALIZACIÓN FINAL: Usamos 'apk' para instalar solo las herramientas confirmadas
RUN apk add --no-cache nmap git
