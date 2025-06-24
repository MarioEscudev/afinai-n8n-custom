FROM n8nio/n8n

USER root

RUN apk add --no-cache nmap git curl unzip

WORKDIR /home/node/.n8n

# Descargamos el ZIP, lo descomprimimos y luego instalamos el paquete
RUN curl -L -o n8n-nodes-shodan.zip https://github.com/n8n-io/n8n-nodes-shodan/archive/refs/heads/main.zip && \
    unzip n8n-nodes-shodan.zip && \
    npm install ./n8n-nodes-shodan-main && \
    curl -L -o n8n-nodes-zoomeye.zip https://github.com/n8n-io/n8n-nodes-zoomeye/archive/refs/heads/main.zip && \
    unzip n8n-nodes-zoomeye.zip && \
    npm install ./n8n-nodes-zoomeye-main



