# dockerized

## Dockerized nodejs, npm, angular

**Attention**: this is only a playground due to the fact that all work is gone if the container is killed.

```
docker build -t avoodoo/angular:1.0-SNAPSHOT .
docker run -itd --name angular -p 4200:4200 avoodoo/angular:1.0-SNAPSHOT
docker exec -it angular bash
ng new my-project
cd my-project 
ng g c my-component
ng serve --host 0.0.0.0
```

## Test it with... 
[http://localhost:4200](http://localhost:4200)
