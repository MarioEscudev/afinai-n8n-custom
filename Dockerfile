# Partimos de la imagen oficial de n8n
FROM n8nio/n8n

# Pasamos a root para poder instalar paquetes
USER root

# Instalamos nmap, git, curl y unzip
RUN apk add --no-cache nmap git curl unzip

# Establecemos el directorio de trabajo
WORKDIR /home/node/.n8n

# Descargamos y descomprimimos los nodos, e instalamos con npm
RUN curl -L -o n8n-nodes-shodan.zip https://github.com/n8n-io/n8n-nodes-shodan/archive/refs/heads/master.zip && \
    unzip n8n-nodes-shodan.zip && \
    npm install ./n8n-nodes-shodan-master && \
    curl -L -o n8n-nodes-zoomeye.zip https://github.com/n8n-io/n8n-nodes-zoomeye/archive/refs/heads/master.zip && \
    unzip n8n-nodes-zoomeye.zip && \
    npm install ./n8n-nodes-zoomeye-master



