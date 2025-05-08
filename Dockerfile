FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN git clone https://github.com/MaBanguero/mcp_goline.git

# Revert to the node user for security purposes
USER node
