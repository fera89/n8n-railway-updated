FROM n8nio/n8n:latest

USER node
WORKDIR /home/node/.n8n
RUN npm install n8n-nodes-firebase-admin
