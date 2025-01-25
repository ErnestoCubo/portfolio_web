FROM node:22.13-alpine3.21
LABEL org.opencontainers.image.source="https://github.com/ErnestoCubo/portfolio_web"

RUN apk update && apk add --no-cache

WORKDIR /opt/app
COPY . /opt/app/

RUN adduser --disabled-password --gecos '' appuser
USER appuser    

EXPOSE 8080

CMD ["npx", "serve", "-s", "build", "-l", "8080"]