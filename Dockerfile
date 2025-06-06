FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm i -g @mcp-server-shopify/run-server@latest
RUN npm i -g @mcp-server-logistic/run-server@latest
RUN npm i -g @mcp-server-mongo/run-server@latest
# Revert to the node user for security purposes
USER node
