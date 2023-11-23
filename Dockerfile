# Usando a imagem base do Uptime Kuma
FROM louislam/uptime-kuma:1

# Expondo a porta 3001
EXPOSE 3001

# Criando um volume para os dados da aplicação
VOLUME /app/data

# Definindo um nome para o container
LABEL name="uptime-kuma"

# Definindo uma política de reinício sempre
STOPSIGNAL SIGTERM

# Não há comandos adicionais necessários

# Definindo o comando de entrada padrão
ENTRYPOINT ["node", "server/server.js"]
