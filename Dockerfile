FROM traefik:latest

COPY Traefik.yaml /etc/traefik/traefik.yaml
COPY conf /conf

