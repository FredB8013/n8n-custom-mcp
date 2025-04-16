FROM n8nio/n8n

USER root

WORKDIR /tmp/n8n-nodes-mcp

# Ajoute le node communautaire MCP à l'image
COPY community-nodes/n8n-nodes-mcp ./n8n-nodes-mcp
#/usr/local/lib/node_modules/n8n-nodes-mcp

RUN npm install --location=global --unsafe-perm ./n8n-nodes-mcp
#/usr/local/lib/node_modules/n8n-nodes-mcp

USER node