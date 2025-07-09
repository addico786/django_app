## Django Application with CI/CD 

![Design](/static/design.png)

# Prerequisites

## clone the repo
```
git clone https://github.com/addico786/django_app.git
```

## From root directory 
```
docker build -t myapp:latest .
```

## From root directory 
```
docker build -t nginx ./nginx
```

## Create Docker Network
```
docker network create my-app-network -d bridge
```
```
docker network ls
```

## Run the containers 
```
docker run -d -p 8000:8000 --name my-app-container --network my-app-network my-app
```

```
docker run -d -p 80:80 --name nginx-proxy --network my-app-container nginx
```

## See if the containers are running
```
docker ps
```

## Visit port 80
```
localhost:80
```


## In Development...