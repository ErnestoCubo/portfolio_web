FROM node:22.13-alpine3.21
LABEL org.opencontainers.image.authors="Ernesto Cubo <ernestocubo@gmail.com>"
LABEL org.opencontainers.image.title="Portfolio Web Application"
LABEL org.opencontainers.image.description="This image contains the built version of the portfolio web application."
LABEL org.opencontainers.image.source="https://github.com/ErnestoCubo/portfolio_web"
LABEL org.opencontainers.image.licenses="MIT"

RUN apk update && apk add --no-cache

WORKDIR /opt/app
COPY ./build /opt/app/

RUN adduser --disabled-password --gecos '' appuser
USER appuser    

EXPOSE 8080

CMD ["npx", "serve", "-s", "build", "-l", "8080"]