FROM debian
RUN apt update -y && \
    apt install -y curl && \
    curl -sSL -o /usr/bin/certbot-auto https://dl.eff.org/certbot-auto && \
    chmod +x /usr/bin/certbot-auto
RUN certbot-auto --install-only -n
