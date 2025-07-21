[![Docker Pulls](https://img.shields.io/docker/pulls/hudongyida/rcon-web-admin
)](https://hub.docker.com/r/hudongyida/rcon-web-admin
)
[中文](docs/README_zh.md)|[English](README.md)

This image lets you run the [rcon-web-admin](https://github.com/rcon-web-admin/rcon-web-admin) as a Docker container

# start
This project runs independently and does not rely on other containers, and has no other variables. So you only need to configure the storage volume
```yaml
service: 
  web: 
    image: hudongyida/rcon-web-admin
    ports: 
      - "4326:4326"
      - "4327:4327"
    volumes:
      - [data path]:/rcon-web-admin-0.14.1/db
      - [logs path]:/rcon-web-admin-0.14.1/logs

networks:
  rcon:
    name: rcon
```
you can also use 'docker run' to run containers【extremely not recommended】
