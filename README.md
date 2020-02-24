# traefik-starter
Traefik V2 template with A notation (sslLabs &amp; securityHeaders)

Just modify domain in docker-compose & Traefik.yaml


Add .env for each backend service with SERVICE name and PORT of application
Add labels to docker-compose

labels:
  - "traefik.enable=true"
  - "traefik.http.routers.${SERVICE}.rule=Host(`toto.xyz`)"
  - "traefik.http.routers.${SERVICE}.tls=true"
  - "traefik.http.services.${SERVICE}.loadbalancer.server.port=${PORT}"
  - "traefik.http.routers.${SERVICE}.entrypoints=https"
  - "traefik.http.routers.${SERVICE}.tls.certresolver=le"
  - "traefik.http.routers.${SERVICE}.middlewares=security-headers@file"

