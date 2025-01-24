FROM node:22.13.0-alpine3.13
RUN apt-get update && apt-get upgrade -y

WORKDIR /opt/app
COPY . /opt/app/

RUN adduser --disabled-password --gecos '' appuser
USER appuser    

EXPOSE 8080

CMD ["npx", "serve", "-s", "build", "-l", "8080"]