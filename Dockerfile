FROM node:10
LABEL description="A navigation Dockerfile for build Docsify."
RUN mkdir -p /www
COPY ./ /www
WORKDIR /www
RUN npm install docsify-cli@latest -g
EXPOSE 3000/tcp
ENTRYPOINT docsify serve docs
