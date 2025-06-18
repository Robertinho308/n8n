FROM n8nio/n8n:latest

# Ativa autenticação
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=senha-forte-aqui

# Configuração de host e porta
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_TUNNEL_URL=https://n8n-server.onrender.com

# Expõe a porta padrão do n8n
EXPOSE 5678

# Inicia o n8n corretamente (comando embutido na imagem)
CMD ["tini", "--", "n8n"]
