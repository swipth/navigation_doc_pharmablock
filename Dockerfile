FROM node:latest
LABEL description="A navigation Dockerfile for build Docsify."
RUN mkdir -p /www
COPY ./ /www
WORKDIR /www
RUN npm install -g docsify-cli@latest
EXPOSE 3000/tcp
ENTRYPOINT docsify serve docs
