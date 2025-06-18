FROM n8nio/n8n

# Ativando autenticação por usuário e senha
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=automactiones
ENV N8N_BASIC_AUTH_PASSWORD=Robertinho.308

# Configuração básica do servidor
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_TUNNEL_URL=https://n8n.onrender.com

EXPOSE 5678

# Comando de inicialização
CMD ["n8n"]
