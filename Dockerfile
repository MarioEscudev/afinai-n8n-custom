# Empezamos con la imagen oficial de n8n como base
FROM n8nio/n8n

# Nos convertimos en el super-usuario 'root' para poder instalar cosas
USER root

# ACTUALIZADO: Usamos 'apk' (el idioma de Alpine Linux) para instalar las herramientas
RUN apk add --no-cache nmap whatweb git
