FROM node:10
LABEL description="A navigation Dockerfile for build Docsify."
RUN mkdir -p /www
COPY ./ /www
WORKDIR /www
RUN npm install serve -g
EXPOSE 3000/tcp
ENTRYPOINT serve -s docs
