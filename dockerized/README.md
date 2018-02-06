## Dockerized NODEJS/NPM/AngularCLI

```
docker build -t avoodoo/angular:1.0-SNAPSHOT .
docker run -itd --name angular -p 4200:4200 avoodoo/angular:1.0-SNAPSHOT
docker exec -it angular bash
```
