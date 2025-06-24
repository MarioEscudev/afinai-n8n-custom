FROM n8nio/n8n

USER root

RUN apk add --no-cache nmap git

RUN cd /home/node/.n8n && \
    npm install git+https://github.com/n8n-io/n8n-nodes-shodan.git && \
    npm install git+https://github.com/n8n-io/n8n-nodes-zoomeye.git

