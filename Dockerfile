FROM n8nio/n8n:latest

# Volta a ser o superusuário para ter permissão de instalar e mudar propriedades
USER root
# Define o local onde o pacote será instalado
WORKDIR /home/node/.n8n
# Instala o pacote
RUN npm install n8n-nodes-firebase-admin
# ESTE É O PASSO CRUCIAL: Devolve a propriedade de TUDO dentro da pasta para o usuário 'node'
RUN chown -R node:node /home/node/.n8n
