FROM n8nio/n8n

USER root

RUN apk add --no-cache nmap git

WORKDIR /home/node/.n8n

RUN git config --global --add safe.directory /home/node/.n8n && \
    git -c credential.helper= clone https://github.com/n8n-io/n8n-nodes-shodan.git && \
    git -c credential.helper= clone https://github.com/n8n-io/n8n-nodes-zoomeye.git && \
    npm install ./n8n-nodes-shodan && \
    npm install ./n8n-nodes-zoomeye

