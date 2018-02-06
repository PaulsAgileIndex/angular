# dockerized

## Dockerized NODEJS/NPM/AngularCLI

```
docker build -t avoodoo/angular:1.0-SNAPSHOT .
docker run -itd --name angular -p 4200:4200 avoodoo/angular:1.0-SNAPSHOT
docker exec -it angular bash
ng new my-project
cd my-project 
ng g c my-component
ng serve --host 0.0.0.0
```

## Test the it... 
[http://localhost:4200](http://localhost:4200)
