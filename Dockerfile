FROM n8nio/n8n

USER root

RUN apk add --no-cache nmap git

WORKDIR /home/node/.n8n

RUN npm install https://github.com/n8n-io/n8n-nodes-shodan.git && \
    npm install https://github.com/n8n-io/n8n-nodes-zoomeye.git
