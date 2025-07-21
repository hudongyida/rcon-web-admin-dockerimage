此镜像运行将rcon-web-admin做为容器运行

# 开始
该项目为独立运行，不依赖其他容器。所以你只需要配置存储卷即可
```yaml
service: 
  web: 
    image: hudongyida/rcon-web-admin
    ports: 
      - "4326:4326"
      - "4327:4327"
    volumes:
      - [数据存放路径]:/rcon-web-admin-0.14.1/db
      - [日志存放路径]:/rcon-web-admin-0.14.1/logs

networks:
  rcon:
    name: rcon
```
当然你也可以使用'docker run'来运行容器【强烈不推荐】
```
docker run -v db:/rcon-web-admin-0.14.1/db -p 4326:4326 -p 4327:4327 -d
```
