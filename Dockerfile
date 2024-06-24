FROM n8nio/n8n:latest

ARG PGPASSWORD
ARG PGHOST
ARG PGPORT
ARG PGDATABASE
ARG PGUSER

ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_DATABASE=$PGDATABASE
ENV DB_POSTGRESDB_HOST=$PGHOST
ENV DB_POSTGRESDB_PORT=$PGPORT
ENV DB_POSTGRESDB_USER=$PGUSER
ENV DB_POSTGRESDB_PASSWORD=$PGPASSWORD
ENV N8N_FEATURES_ENABLE_ALL=true
ENV EXECUTIONS_DATA_PRUNE=true
ENV NODES_INCLUDE='["n8n-nodes-base.httpRequest", "n8n-nodes-base.set"]'
ENV NODE_FUNCTION_ALLOW_EXTERNAL='["axios", "moment"]'
ENV N8N_COMMUNITY_PACKAGES_ENABLED=true









ARG ENCRYPTION_KEY

ENV N8N_ENCRYPTION_KEY=$ENCRYPTION_KEY

CMD ["n8n start"]
