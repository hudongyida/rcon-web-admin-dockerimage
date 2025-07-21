FROM node:12.13.1-alpine
COPY rcon-web-admin-0.14.1 /rcon-web-admin-0.14.1
LABEL maintainer="hudong"
WORKDIR /rcon-web-admin-0.14.1
RUN npm install && \
    node src/main.js install-core-widgets && \
    chmod 0755 -R startscripts *
EXPOSE 4326 4327
ENTRYPOINT ["/usr/local/bin/node", "src/main.js", "start"]
