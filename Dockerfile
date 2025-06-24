# Usamos la imagen oficial de n8n como base
FROM n8nio/n8n

# Cambiamos a root para poder instalar paquetes
USER root

# Instalamos las herramientas necesarias: nmap, git, curl y unzip
RUN apk add --no-cache nmap git curl unzip

# Forzamos a git a usar HTTPS en lugar de SSH para evitar problemas de autenticación
RUN git config --global url."https://github.com/".insteadOf git@github.com:

# Definimos el directorio de trabajo donde n8n guarda sus cosas
WORKDIR /home/node/.n8n

# Clonamos los repositorios directamente con git usando HTTPS y los instalamos con npm
RUN git clone https://github.com/n8n-io/n8n-nodes-shodan.git && \
    git clone https://github.com/n8n-io/n8n-nodes-zoomeye.git && \
    npm install ./n8n-nodes-shodan && \
    npm install ./n8n-nodes-zoomeye

# Volvemos a usar el usuario 'node' para que n8n funcione con los permisos correctos
USER node




